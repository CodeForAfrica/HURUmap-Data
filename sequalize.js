const fs = require("fs");
const knex = require("knex")({ client: "postgres" });
const pluralize = require("pluralize");

/** Helpers */

function formatSQL(str, variables) {
  return knex
    .raw(str, variables)
    .toQuery()
    .toString();
}

function escapeField(str) {
  return knex
    .raw(str)
    .toQuery()
    .toString();
}

function gqlName(tablename) {
  const spliTableName = tablename
    .split("_")
    .map(w => w[0].toUpperCase() + w.slice(1));
  const lastWord = spliTableName.pop();

  if (/[0-9]$/.test(lastWord)) {
    spliTableName.push(lastWord + "S");
  } else {
    spliTableName.push(pluralize(lastWord));
  }
  return "all" + spliTableName.join("");
}

/** */

const sqlString = (tablename, headers, dataTypes, data, sources) => {
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

INSERT INTO public.${escapeField(tablename)} VALUES
${data
  .map(
    values =>
      `(${values
        .map((value, i) => {
          if ("string" === dataTypes[i]) {
            return `${formatSQL("?", [value || null])}`;
          }
          return value ? Number(value.replace(/"|,/gi, "")) : "NULL";
        })
        .join(",")})`
  )
  .join(",\r\n")};
      
${Object.values(sources).join("\r\n")}
`.trim() +
    `\r\n\r\nALTER TABLE ONLY public.${escapeField(
      tablename
    )} ADD CONSTRAINT pk_${escapeField(
      tablename
    )} PRIMARY KEY (${headers
      .map(header => escapeField(header))
      .join(", ")});\r\n`
  );
};

module.exports = ({
  tablename,
  drop,
  data,
  geos,
  sources,
  populateGeoColumns = true,
  defaultHeaders = [
    "geo_level",
    "geo_code",
    "geo_version",
    "parent_level",
    "parent_code"
  ]
}) => {
  if (drop) {
    drop.forEach(table => {
      fs.writeFileSync(
        `./sql/${table}.sql`,
        `DROP TABLE IF EXISTS public.${table};\n\nDELETE FROM public.sources where table_name = '${gqlName(
          table
        )}';`.trim()
      );
    });
  }

  if (!data) {
    return;
  }
  const origHeaders = data[0].map(v => v.trim().toLowerCase());
  const headers = Array.from(
    new Set(
      populateGeoColumns ? defaultHeaders.concat(origHeaders) : origHeaders
    )
  );

  let dataTypes = new Array(headers.length).fill(undefined);
  const dataSources = {};

  const dataValues = data.slice(1).map(values => {
    const row = {};
    values.forEach((value, index) => {
      row[origHeaders[index]] = value.trim();
    });

    if (populateGeoColumns) {
      const geo = row["name"]
        ? geos.find(
            geo =>
              geo.name.toLocaleLowerCase() === row["name"].toLocaleLowerCase()
          )
        : geos.find(geo => geo.geo_code === row["geo_code"]);

      if (geo) {
        row["geo_version"] = geo["version"];
        row["geo_code"] = geo["geo_code"];
        row["geo_level"] = geo["geo_level"];
        row["parent_code"] = geo["parent_code"];
        row["parent_level"] = geo["parent_level"];

        if (sources.length) {
          const countryCode =
            row["geo_level"] === "country"
              ? row["geo_code"]
              : row["parent_code"];

          const { title, link } =
            sources.find(
              source =>
                source.table_name.includes(tablename) &&
                (source.country_code === countryCode || !source.country_code)
            ) || {};

          if (title && link) {
            dataSources[
              `${row["geo_level"]}-${countryCode}`
            ] = formatSQL(
              `INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES(?,?,?,?,?) on conflict do nothing;`,
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

    const rowArray = headers.map(header => row[header]);

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

  const sql = sqlString(
    tablename,
    headers,
    dataTypes,
    dataValues.filter(v => v),
    dataSources
  );

  fs.writeFileSync(`./sql/${tablename}.sql`, sql);
};
