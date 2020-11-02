SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_expenditure_classification DROP CONSTRAINT IF EXISTS pk_py_expenditure_classification;
DROP TABLE IF EXISTS public.py_expenditure_classification;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_expenditure_classification (
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

ALTER TABLE ONLY public.py_expenditure_classification ADD CONSTRAINT pk_py_expenditure_classification PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_expenditure_classification VALUES
('level1','KE_1_001',2009,'country','KE','Budget','Development expenditure',4939.8,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Expenditure','Development expenditure',574.72,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Budget','Recurrent Expenditure',8739.57,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Expenditure','Recurrent Expenditure',2980.48,'Mombasa'),
('level1','KE_1_047',2009,'country','KE','Budget','Development expenditure',11271.26,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Expenditure','Development expenditure',625.84,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Budget','Recurrent Expenditure',25710.13,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Expenditure','Recurrent Expenditure',10474.95,'Nairobi'),
('level1','KE_1_017',2009,'country','KE','Budget','Development expenditure',4667.13,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Expenditure','Development expenditure',620.1,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Budget','Recurrent expenditure',6123.48,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Expenditure','Recurrent expenditure',2825,'Makueni'),
('level1','KE_1_042',2009,'country','KE','Budget','Recurrent expenditure',7305.95,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Exchequer Issues','Recurrent expenditure',3012.32,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Expenditure','Recurrent expenditure',3112.55,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Budget','Development expenditure',4499.6,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Exchequer Issues','Development expenditure',118.65,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Expenditure','Development expenditure',284.61,'Kisumu') ON CONFLICT DO NOTHING;
