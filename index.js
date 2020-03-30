const fs = require("fs");
const sequalize = require("./sequalize");

/** Helpers */

function csv2Array(path) {
  return fs
    .readFileSync(path)
    .toString()
    .split("\r\n")
    .map(values => values.split(/,(?=(?:(?:[^"]*"){2})*[^"]*$)/));
}

function rows2ObjectsArray(data) {
  const columns = data.shift();

  return data.map(row =>
    columns.reduce(
      (geo, column) => ({
        ...geo,
        [column]: row[columns.indexOf(column)]
      }),
      {}
    )
  );
}

function csv2OjectsArray(path) {
  return rows2ObjectsArray(csv2Array(path));
}

const transpose = a => a[0].map((_, c) => a.map(r => r[c]));

function combineCSVData(filenames) {
  return filenames.reduce((combinedData, filename) => {
    let data = fs
      .readFileSync(`./csv/data/${filename}`)
      .toString()
      .replace(/_[za|ke],/gi, ",")
      .split("\r\n")
      .map(values => values.split(/,(?=(?:(?:[^"]*"){2})*[^"]*$)/));

    // ensure column names have no spaces have no spaces
    data[0] = data[0].map(x => x.toLowerCase().replace(/ | _/, "_"));

    // Order data by column name
    data = transpose(transpose(data).sort((a, b) => (a[0] < b[0] ? 1 : -1)));

    return combinedData.concat(!combinedData.length ? data : data.slice(1));
  }, []);
}

/** Main */

const geos = csv2OjectsArray("./csv/geos.csv");

const tables = fs.readdirSync("./csv/data").reduce((merged, filename) => {
  const tablename = filename.slice(0, -7); // remove _za.csv or _ke.csv
  if (!merged[tablename]) {
    merged[tablename] = [filename];
  } else {
    merged[tablename].push(filename);
  }

  return merged;
}, {});

const sources = rows2ObjectsArray(combineCSVData(tables["source"]));

Object.entries(tables).forEach(([tablename, filenames]) => {
  if (!["source"].includes(tablename)) {
    const data = combineCSVData(filenames);

    sequalize({ tablename, data, geos, sources });
  }
});

const geosData = csv2Array("./csv/geos.csv");

sequalize({ tablename: "geos", data: geosData, populateGeoColumns: false });
