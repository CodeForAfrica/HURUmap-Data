SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_agriculture_productivity_management_prog_perc DROP CONSTRAINT IF EXISTS pk_py_agriculture_productivity_management_prog_perc;
DROP TABLE IF EXISTS public.py_agriculture_productivity_management_prog_perc;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_agriculture_productivity_management_prog_perc (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable_2 TEXT,
	variable_1 TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.py_agriculture_productivity_management_prog_perc ADD CONSTRAINT pk_py_agriculture_productivity_management_prog_perc PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_agriculture_productivity_management_prog_perc VALUES
('level1','KE_1_042',2009,'country','KE','Absorption','Agriculture productivity management',1.8,'Kisumu') ON CONFLICT DO NOTHING;
