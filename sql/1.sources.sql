SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.sources DROP CONSTRAINT IF EXISTS pk_sources;
DROP TABLE IF EXISTS public.sources;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.sources (
	geo_level TEXT,
	country_code TEXT,
	pg_table_name TEXT,
	-- TODO: rename table_name to query_name
	-- table_name is the camelcase postgraphile table table query name e.g. allTableName
	table_name TEXT,
	source_title TEXT,
	source_link TEXT
);
