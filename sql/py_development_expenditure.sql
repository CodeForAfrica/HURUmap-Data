SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_development_expenditure DROP CONSTRAINT IF EXISTS pk_py_development_expenditure;
DROP TABLE IF EXISTS public.py_development_expenditure;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_development_expenditure (
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

ALTER TABLE ONLY public.py_development_expenditure ADD CONSTRAINT pk_py_development_expenditure PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_development_expenditure VALUES
('level1','KE_1_001',2009,'country','KE','Budget','Development Expenditure',4939.8,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Expenditure','Development Expenditure',574.72,'Mombasa'),
('level1','KE_1_047',2009,'country','KE','Budget','Development Expenditure',11271.26,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Expenditure','Development Expenditure',625.84,'Nairobi'),
('level1','KE_1_017',2009,'country','KE','Budget','Development expenditure',4667.13,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Exchequer Issues','Development expenditure',946.23,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Expenditure','Development expenditure',620.1,'Makueni'),
('level1','KE_1_042',2009,'country','KE','Budget','Development expenditure',4499.6,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Exchequer Issues','Development expenditure',118.65,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Expenditure','Development expenditure',284.61,'Kisumu') ON CONFLICT DO NOTHING;
