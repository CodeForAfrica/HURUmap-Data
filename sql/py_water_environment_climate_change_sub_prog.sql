SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_water_environment_climate_change_sub_prog DROP CONSTRAINT IF EXISTS pk_py_water_environment_climate_change_sub_prog;
DROP TABLE IF EXISTS public.py_water_environment_climate_change_sub_prog;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_water_environment_climate_change_sub_prog (
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

ALTER TABLE ONLY public.py_water_environment_climate_change_sub_prog ADD CONSTRAINT pk_py_water_environment_climate_change_sub_prog PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_water_environment_climate_change_sub_prog VALUES
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','General administration & planning',173.11,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','General administration & planning',69.97,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Water infrastructure Development',1023.42,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Water infrastructure Development',73.51,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Irrigation infrastructure development',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Irrigation infrastructure development',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Environment management and protection',146.18,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Environment management and protection',24.72,'Makueni') ON CONFLICT DO NOTHING;
