SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_lands_housing_and_physical_planning_programme_absorption_perc DROP CONSTRAINT IF EXISTS pk_py_lands_housing_and_physical_planning_programme_absorption_perc;
DROP TABLE IF EXISTS public.py_lands_housing_and_physical_planning_programme_absorption_perc;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_lands_housing_and_physical_planning_programme_absorption_perc (
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

ALTER TABLE ONLY public.py_lands_housing_and_physical_planning_programme_absorption_perc ADD CONSTRAINT pk_py_lands_housing_and_physical_planning_programme_absorption_perc PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_lands_housing_and_physical_planning_programme_absorption_perc VALUES
('level1','KE_1_001',2009,'country','KE','Absorption','Administration Unit',29.6,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Absorption','Land Management Unit',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Absorption','Housing Development Unit',0,'Mombasa') ON CONFLICT DO NOTHING;
