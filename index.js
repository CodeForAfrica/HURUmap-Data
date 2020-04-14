const fs = require("fs");
const djangolize = require("./djangolize");
const sequalize = require("./sequalize");

const run = data => {
  if (process.argv.includes("--django")) {
    djangolize.call(null, data);
  } else {
    sequalize.call(null, data);
  }
};

const FILE_COUNTRY_CODE_REGEX = /(?<=_)(AF|AX|AL|DZ|AS|AD|AO|AI|AQ|AG|AR|AM|AW|AU|AT|AZ|BS|BH|BD|BB|BY|BE|BZ|BJ|BM|BT|BO|BQ|BA|BW|BV|BR|IO|BN|BG|BF|BI|KH|CM|CA|CV|KY|CF|TD|CL|CN|CX|CC|CO|KM|CD|CG|CK|CR|HR|CU|CW|CY|CZ|CI|DK|DJ|DM|DO|EC|EG|SV|GQ|ER|EE|ET|FK|FO|FJ|FI|FR|GF|PF|TF|GA|GM|GE|DE|GH|GI|GR|GL|GD|GP|GU|GT|GG|GW|GN|GY|HT|HM|VA|HN|HK|HU|IS|IN|ID|IR|IQ|IE|IM|IL|IT|JM|JP|JE|JO|KZ|KE|KI|KP|KR|KW|KG|LA|LV|LB|LS|LR|LY|LI|LT|LU|MO|MK|MG|MW|MY|MV|ML|MT|MH|MQ|MR|MU|YT|MX|FM|MD|MC|MN|ME|MS|MA|MZ|MM|NA|NR|NP|NL|NC|NZ|NI|NE|NG|NU|NF|MP|NO|OM|PK|PW|PS|PA|PG|PY|PE|PH|PN|PL|PT|PR|QA|RO|RU|RW|RE|BL|SH|KN|LC|MF|PM|VC|WS|SM|ST|SA|SN|RS|SC|SL|SG|SX|SK|SI|SB|SO|ZA|GS|SS|ES|LK|SD|SR|SJ|SZ|SE|CH|SY|TW|TJ|TZ|TH|TL|TG|TK|TO|TT|TN|TR|TM|TC|TV|UG|UA|AE|GB|US|UM|UY|UZ|VU|VE|VN|VG|VI|WF|EH|YE|ZM|ZW)\./i;

/** Helpers */

function csv2Array(path) {
  return fs
    .readFileSync(path)
    .toString()
    .split(/\r|\n|\r\n/)
    .filter((line) => line)
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

function combineCSVData(tablename) {
  const filenames = fs
    .readdirSync("./csv/data")
    .filter((f) => f.startsWith(tablename));
  return filenames.reduce((combinedData, filename) => {
    const countryCode = (filename.match(FILE_COUNTRY_CODE_REGEX) || [
      "",
    ])[0].toLocaleLowerCase();

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

const tables = fs.readdirSync("./csv/data").reduce((merged, filename) => {
  if (!filename.includes(".csv")) {
    return merged;
  }

  const tablename = filename.match(FILE_COUNTRY_CODE_REGEX)
    ? filename.slice(0, -7)
    : filename.slice(0, -4); // remove _za.csv or _ke.csv or _gh.csv or .csv

  // Skip files that have already been sequalize
  if (
    fs.existsSync(`./sql/${tablename}.sql`) &&
    !process.argv.includes("--reprocess")
  ) {
    const { mtime: mtimeCSV } = fs.statSync(`./csv/data/${filename}`);
    const { mtime: mtimeSQL } = fs.statSync(`./sql/${tablename}.sql`);

    const diff = (mtimeSQL.getTime() - mtimeCSV.getTime()) / 1000;
    if (diff > 0 && merged[tablename] !== 0) {
      merged[tablename] = 1;
      return merged;
    }
  }

  merged[tablename] = 0;
  return merged;
}, {});

const sources = rows2ObjectsArray(combineCSVData("source"));

Object.entries(tables).forEach(([tablename, skipped]) => {
  if (!skipped && !["source"].includes(tablename)) {
    run({
      tablename,
      data: combineCSVData(tablename),
      geos,
      mappedGeos,
      sources,
    });
  }
});

run({
  tablename: "geos",
  data: csv2Array("./csv/geos.csv"),
  populateGeoColumns: false,
  pkColumns: ["geo_level", "geo_code", "version"],
});

// Wazimap DB Support
run({
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
  .filter((tablename) => tablename && tables[tablename] === undefined);

run({ drop });
