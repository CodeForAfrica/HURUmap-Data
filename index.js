const fs = require("fs");
const sequalize = require("./sequalize");

const FILE_COUNTRY_CODE_REGEX = /(?<=_)(za|ke|gh)/;

/** Helpers */

function csv2Array(path) {
  return fs
    .readFileSync(path)
    .toString()
    .split(/\r|\n|\r\n/)
    .filter(line => line)
    .map((values) => values.split(/,(?=(?:(?:[^"]*"){2})*[^"]*$)/));
}

function rows2ObjectsArray(data) {
  const columns = data.shift();

  return data.map((row) =>
    columns.reduce(
      (geo, column) => ({
        ...geo,
        [column]: row[columns.indexOf(column)],
      }),
      {}
    )
  );
}

function csv2ObjectsArray(path) {
  return rows2ObjectsArray(csv2Array(path));
}

const transpose = (a) => a[0].map((_, c) => a.map((r) => r[c]));

function combineCSVData(filenames) {
  return filenames.reduce((combinedData, [filename, countryCode]) => {
    let data = fs
      .readFileSync(`./csv/data/${filename}`)
      .toString()
      .replace(new RegExp(`_${countryCode.toLocaleLowerCase()},`, "gi"), ",")
      .split("\r\n")
      .map((values) => values.split(/,(?=(?:(?:[^"]*"){2})*[^"]*$)/));

    // ensure column names have no spaces have no spaces
    data[0] = data[0].map((x) => x.toLowerCase().replace(/ _| /, "_"));

    const noCountryCodeColumn = !data[0].includes("country_code");
    const transposedData = transpose(data);

    if (noCountryCodeColumn && countryCode) {
      transposedData.push([
        "country_code",
        ...Array(transposedData[0].length - 1).fill(countryCode.toLowerCase()),
      ]);
    }

    // Order data by column name
    data = transpose(transposedData.sort((a, b) => (a[0] < b[0] ? 1 : -1)));

    return combinedData.concat(!combinedData.length ? data : data.slice(1));
  }, []);
}

/** Main */

const geos = csv2ObjectsArray("./csv/geos.csv");

// Create map to afr code
const mappedGeos = csv2ObjectsArray("./csv/geo_level_map.csv").reduce(
  (map, row) => {
    const key = `${row["country_code"]}-${row["geo_level"]}-${row["geo_code"]}`;
    map[key] = geos.find(
      (geo) =>
        geo.geo_level === row["mapto_geo_level"] &&
        geo.geo_code === row["mapto_geo_code"]
    );
    map[
      `${row["country_code"]}-${row["mapto_geo_level"]}-${row["mapto_geo_code"]}`
    ] = map[key];
    return map;
  },
  {}
);

const tables = fs.readdirSync("./csv/data").reduce(
  (merged, filename) => {
    if (!filename.includes(".csv")) {
      return merged;
    }

    const tablename = filename.match(FILE_COUNTRY_CODE_REGEX)
      ? filename.slice(0, -7)
      : filename.slice(0, -4); // remove _za.csv or _ke.csv or _gh.csv or .csv
    const countryCode = (filename.match(FILE_COUNTRY_CODE_REGEX) || [
      "",
    ])[0].toLocaleLowerCase();

    // Skip files that have already been sequalize
    if (
      fs.existsSync(`./sql/${tablename}.sql`) &&
      !process.argv.includes("--reprocess")
    ) {
      const { mtime: mtimeCSV } = fs.statSync(`./csv/data/${filename}`);
      const { mtime: mtimeSQL } = fs.statSync(`./sql/${tablename}.sql`);

      const diff = (mtimeSQL.getTime() - mtimeCSV.getTime()) / 1000;
      if (diff > 0) {
        merged.skip.push(tablename);
        return merged;
      }
    }

    if (!merged[tablename]) {
      merged[tablename] = [[filename, countryCode]];
    } else {
      merged[tablename].push([filename, countryCode]);
    }

    return merged;
  },
  { skip: [] }
);

const sources = rows2ObjectsArray(combineCSVData(tables["source"]));

Object.entries(tables).forEach(([tablename, filenames]) => {
  if (!["source", "skip"].includes(tablename)) {
    const data = combineCSVData(filenames);

    sequalize({ tablename, data, geos, mappedGeos, sources });
  }
});

sequalize({
  tablename: "geos",
  data: csv2Array("./csv/geos.csv"),
  populateGeoColumns: false,
  pkColumns: ["geo_level", "geo_code", "version"],
});

// Wazimap DB Support
sequalize({
  tablename: "wazimap_geography",
  data: csv2Array("./csv/wazimap_geography.csv"),
  populateGeoColumns: false,
  pkColumns: ["geo_level", "geo_code", "version"],
});

const drop = fs
  .readdirSync("./sql")
  .map((filename) => {
    if (
      !filename.includes(".sql") ||
      ["1.sources.sql", "geos.sql", "wazimap_geography.sql"].includes(filename)
    ) {
      return null;
    }
    return filename.replace(".sql", "");
  })
  .filter(
    (tablename) =>
      tablename && !tables[tablename] && !tables.skip.includes(tablename)
  );

sequalize({ drop });
