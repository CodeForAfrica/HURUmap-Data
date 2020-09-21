SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_expenditure_classification_perc DROP CONSTRAINT IF EXISTS pk_py_expenditure_classification_perc;
DROP TABLE IF EXISTS public.py_expenditure_classification_perc;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_expenditure_classification_perc (
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

ALTER TABLE ONLY public.py_expenditure_classification_perc ADD CONSTRAINT pk_py_expenditure_classification_perc PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_expenditure_classification_perc VALUES
('level1','KE_1_001',2009,'country','KE','Expenditure as a Percentage of Total Expenditure','Development expenditure',83.8,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Absorption','Development expenditure',34.1,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Expenditure as a Percentage of Total Expenditure','Recurrent Expenditure',16.2,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Absorption','Recurrent Expenditure',11.6,'Mombasa') ON CONFLICT DO NOTHING;
