const fs = require("fs");
const sequalize = require("./sequalize");

/** Helpers */

function csvToArray(path) {
  return fs
    .readFileSync(path)
    .toString()
    .split("\r\n")
    .map(values => values.split(/,(?=(?:(?:[^"]*"){2})*[^"]*$)/));

}

function csvToOjectsArray(path) {
  let data = csvToArray(path);

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

const transpose = a => a[0].map((_, c) => a.map(r => r[c]));

function combineCSVData(filenames) {
  return filenames.reduce((combinedData, filename) => {
    let data = fs
      .readFileSync(`./csv/data/${filename}`)
      .toString()
      .replace(/_za|_ke,/gi, ",")
      .split("\r\n")
      .map(values => values.split(/,(?=(?:(?:[^"]*"){2})*[^"]*$)/));

      // ensure column names have no spaces have no spaces
      data[0] = data[0].map(x => x.toLowerCase().replace(/ | _/, '_'))

    // Order data by column name
    data = transpose(transpose(data).sort((a, b) => (a[0] < b[0] ? 1 : -1)));

    return combinedData.concat(!combinedData.length ? data : data.slice(1));
  }, []);
}

/** Main */

const geos = csvToOjectsArray("./csv/geos.csv");

const tables = fs.readdirSync("./csv/data").reduce((merged, filename) => {
  const tablename = filename.slice(0, -7); // remove _za.csv or _ke.csv
  if (!merged[tablename]) {
    merged[tablename] = [filename];
  } else {
    merged[tablename].push(filename);
  }

  return merged;
}, {});

const sources = combineCSVData(tables["source"]);

Object.entries(tables).forEach(([tablename, filenames]) => {
  if (!["source"].includes(tablename)) {
    const data = combineCSVData(filenames);

    sequalize({ tablename, data, geos, sources });
  }
});


const geosData = csvToArray("./csv/geos.csv");

sequalize({ tablename: "geos", data: geosData, populateGeoColumns: false });
