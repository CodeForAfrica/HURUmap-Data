SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_lands_housing_and_physical_planning_programme DROP CONSTRAINT IF EXISTS pk_py_lands_housing_and_physical_planning_programme;
DROP TABLE IF EXISTS public.py_lands_housing_and_physical_planning_programme;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_lands_housing_and_physical_planning_programme (
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

ALTER TABLE ONLY public.py_lands_housing_and_physical_planning_programme ADD CONSTRAINT pk_py_lands_housing_and_physical_planning_programme PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_lands_housing_and_physical_planning_programme VALUES
('level1','KE_1_001',2009,'country','KE','Approved Budget','Administration Unit',233.12,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Administration Unit',68.94,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Administration Unit',164.18,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Land Management Unit',78.075,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Land Management Unit',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Land Management Unit',78.075,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Housing Development Unit',120.29,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Housing Development Unit',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Housing Development Unit',120.29,'Mombasa') ON CONFLICT DO NOTHING;
