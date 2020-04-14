const fs = require("fs");
const knex = require("knex")({ client: "postgres" });
const pluralize = require("pluralize");

/** Helpers */

function formatSQL(str, variables) {
  return knex.raw(str, variables).toQuery().toString();
}

function escapeField(str) {
  return knex.raw(str).toQuery().toString();
}

function gqlName(tablename) {
  const spliTableName = tablename
    .split("_")
    .map((w) => w[0].toUpperCase() + w.slice(1));
  const lastWord = spliTableName.pop();

  if (/[0-9]$/.test(lastWord)) {
    spliTableName.push(lastWord + "S");
  } else {
    spliTableName.push(pluralize(lastWord));
  }
  return "all" + spliTableName.join("");
}

/** */

const sqlString = ({
  tablename,
  headers,
  dataTypes,
  dataValues,
  dataSources,
  pkColumns,
}) => {
  return `
from django.db import models

class ${tablename.replace(/^[a-z]|_([a-z])/g, (g) => {
    return (g[1] || g[0]).toUpperCase();
  })}(models.Model):
${headers
  .map(
    (header, i) =>
      `\t${escapeField(header)} = ${
        dataTypes[i] === "string"
          ? "models.TextField()"
          : "models.FloatField()"
      }`
  )
  .join("\r\n")}

    class Meta:
      unique_together = (${(pkColumns || headers)
        .map((header) => `"${header}"`)
        .join(", ")})

    def __str__(self):
        return self.title

`.trim();
};

module.exports = ({
  tablename,
  drop,
  data,
  geos,
  mappedGeos,
  sources,
  populateGeoColumns = true,
  defaultHeaders = [
    "geo_level",
    "geo_code",
    "geo_version",
    "parent_level",
    "parent_code",
  ],
  pkColumns,
}) => {
  if (drop) {
    drop.forEach((table) => {
      fs.writeFileSync(
        `./sql/${table}.sql`,
        `DROP TABLE IF EXISTS public.${table};\n\nDELETE FROM public.sources where table_name = '${gqlName(
          table
        )}';`.trim()
      );
    });
  }

  if (!data || !data[0]) {
    return;
  }
  const origHeaders = data[0].map((v) => v.trim().toLowerCase());
  let headers = Array.from(
    new Set(
      populateGeoColumns ? defaultHeaders.concat(origHeaders) : origHeaders
    )
  );

  let dataTypes = new Array(headers.length).fill(undefined);
  const dataSources = {};

  const dataValues = data.slice(1).map((values) => {
    const row = {};
    values.forEach((value, index) => {
      row[origHeaders[index]] = value.trim();
    });

    if (populateGeoColumns) {
      const key = `${
        row["geo_level"] === "country"
          ? row["geo_code"]
          : (row["country_code"] || "").toLocaleLowerCase()
      }-${row["geo_level"]}-${row["geo_code"]}`;
      const geo = mappedGeos[key]
        ? mappedGeos[key]
        : geos.find(
            (geo) =>
              geo.name.toLocaleLowerCase() ===
              (row["name"] || "").toLocaleLowerCase()
          );

      if (geo) {
        row["geo_version"] = geo["version"];
        row["geo_code"] = geo["geo_code"];
        row["geo_level"] = geo["geo_level"];
        row["parent_code"] = geo["parent_code"];
        row["parent_level"] = geo["parent_level"];

        if (sources.length) {
          countryCode =
            row["geo_level"] === "country"
              ? row["geo_code"]
              : row["parent_code"];

          const { title, link } =
            sources.find(
              (source) =>
                source.table_name.includes(tablename) &&
                (source.country_code === countryCode || !source.country_code)
            ) || {};

          if (title && link) {
            dataSources[
              `${row["geo_level"]}-${countryCode}`
            ] = formatSQL(
              `INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES(?,?,?,?,?) ON CONFLICT DO NOTHING;`,
              [row["geo_level"], countryCode, gqlName(tablename), title, link]
            );
          }
        }
      } else {
        // row["geo_version"] = null;
        // row["geo_code"] = null;
        // row["geo_level"] = null;
        // row["parent_code"] = null;
        // row["parent_level"] = null;
        // ignore new geo
        return;
      }
    }

    // Remove country code
    // It has served its purpose
    delete row["country_code"];
    headers = headers.filter((head) => head !== "country_code");

    const rowArray = headers.map((header) => row[header]);

    // Determine data types
    if (dataTypes.includes(undefined)) {
      dataTypes.forEach((v, i) => {
        if (!v && rowArray[i]) {
          const value = rowArray[i].replace(/"|,/gi, "");
          if (value && typeof dataTypes[i] === "undefined") {
            if (Number.isNaN(Number(value))) {
              dataTypes[i] = "string";
            } else {
              dataTypes[i] = "number";
            }
          }
        }
      });
    }

    return rowArray;
  });

  const sql = sqlString({
    tablename,
    headers,
    dataTypes,
    dataValues: dataValues.filter((v) => v),
    dataSources,
    pkColumns,
  });

  fs.writeFileSync(`./app/data/models/${tablename}.py`, sql);
};
