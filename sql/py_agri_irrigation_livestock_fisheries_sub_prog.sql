SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_agri_irrigation_livestock_fisheries_sub_prog DROP CONSTRAINT IF EXISTS pk_py_agri_irrigation_livestock_fisheries_sub_prog;
DROP TABLE IF EXISTS public.py_agri_irrigation_livestock_fisheries_sub_prog;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_agri_irrigation_livestock_fisheries_sub_prog (
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

ALTER TABLE ONLY public.py_agri_irrigation_livestock_fisheries_sub_prog ADD CONSTRAINT pk_py_agri_irrigation_livestock_fisheries_sub_prog PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_agri_irrigation_livestock_fisheries_sub_prog VALUES
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','General administration & planning',346.18,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','General administration & planning',120.72,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Land, Crop development & productivity',463.64,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Land, Crop development & productivity',53.87,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Agribusiness and information management',4.34,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Agribusiness and information management',13.72,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Livestock Production, Management and Development',107.64,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Livestock Production, Management and Development',5.65,'Makueni') ON CONFLICT DO NOTHING;
