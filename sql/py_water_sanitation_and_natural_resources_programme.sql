SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_water_sanitation_and_natural_resources_programme DROP CONSTRAINT IF EXISTS pk_py_water_sanitation_and_natural_resources_programme;
DROP TABLE IF EXISTS public.py_water_sanitation_and_natural_resources_programme;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_water_sanitation_and_natural_resources_programme (
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

ALTER TABLE ONLY public.py_water_sanitation_and_natural_resources_programme ADD CONSTRAINT pk_py_water_sanitation_and_natural_resources_programme PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_water_sanitation_and_natural_resources_programme VALUES
('level1','KE_1_001',2009,'country','KE','Approved Budget','Administration unit',68.98,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Administration unit',9.66,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Administration unit',59.32,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Sanitation/Sewerage Services Headquarters',609.43,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Sanitation/Sewerage Services Headquarters',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Sanitation/Sewerage Services Headquarters',609.43,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Water Supply Headquarters',938.01,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Water Supply Headquarters',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Water Supply Headquarters',938.01,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Natural Resources',54.8,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Natural Resources',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Natural Resources',54.8,'Mombasa') ON CONFLICT DO NOTHING;
