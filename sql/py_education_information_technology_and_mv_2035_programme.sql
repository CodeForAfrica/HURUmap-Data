SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_education_information_technology_and_mv_2035_programme DROP CONSTRAINT IF EXISTS pk_py_education_information_technology_and_mv_2035_programme;
DROP TABLE IF EXISTS public.py_education_information_technology_and_mv_2035_programme;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_education_information_technology_and_mv_2035_programme (
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

ALTER TABLE ONLY public.py_education_information_technology_and_mv_2035_programme ADD CONSTRAINT pk_py_education_information_technology_and_mv_2035_programme PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_education_information_technology_and_mv_2035_programme VALUES
('level1','KE_1_001',2009,'country','KE','Approved Budget','General Administration, Planning and Support Services',286.68,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','General Administration, Planning and Support Services',94.57,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','General Administration, Planning and Support Services',192.11,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Education headquarters',126.36,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Education headquarters',4.14,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Education headquarters',122.22,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Childcare',64.65,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Childcare',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Childcare',64.65,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Elimu Fund',161.89,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Elimu Fund',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Elimu Fund',161.89,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Information Technology Headquarters',122.27,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Information Technology Headquarters',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Information Technology Headquarters',122.27,'Mombasa') ON CONFLICT DO NOTHING;
