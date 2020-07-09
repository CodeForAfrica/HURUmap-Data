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
  ignoreNULLValues,
}) => {
  return (
    `
SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.${escapeField(
      tablename
    )} DROP CONSTRAINT IF EXISTS ${escapeField(`pk_${tablename}`)};
DROP TABLE IF EXISTS public.${escapeField(tablename)};
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.${escapeField(tablename)} (
${headers
  .map(
    (header, i) =>
      `\t${escapeField(header)} ${
        dataTypes[i] === "string" ? "TEXT" : "NUMERIC"
      }`
  )
  .join(",\r\n")}
);

ALTER TABLE ONLY public.${escapeField(
      tablename
    )} ADD CONSTRAINT pk_${escapeField(tablename)} PRIMARY KEY (${(
      pkColumns || headers
    )
      .map((header) => escapeField(header))
      .join(", ")});

INSERT INTO public.${escapeField(tablename)} VALUES
${dataValues
  // IGNORE NULL VALUES
  .filter(
    (values) => !ignoreNULLValues || values.findIndex((value) => !value) === -1
  )
  .map(
    (values) =>
      `(${values
        .map((value, i) => {
          if ("string" === dataTypes[i]) {
            return `${formatSQL("?", [ value ? value.replace(/^"|"$/g, "") : null ])}`;
          }
          return value ? Number(value.replace(/"|,/gi, "")) : "NULL";
        })
        .join(",")})`
  )
  .join(",\r\n")} ON CONFLICT DO NOTHING;
      
${Object.values(dataSources).join("\r\n")}
`.trim() + `\n`
  );
};

module.exports = ({
  tablename,
  drop,
  data,
  geos,
  mappedGeos,
  sources,
  populateGeoColumns = true,
  ignoreNULLValues = true,
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
        row["geo_level"] === "country" || row["geo_level"] === "continent"
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
    ignoreNULLValues,
  });

  fs.writeFileSync(`./sql/${tablename}.sql`, sql);
};
