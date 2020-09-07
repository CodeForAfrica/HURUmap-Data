SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_expenditure_economic DROP CONSTRAINT IF EXISTS pk_py_expenditure_economic;
DROP TABLE IF EXISTS public.py_expenditure_economic;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_expenditure_economic (
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

ALTER TABLE ONLY public.py_expenditure_economic ADD CONSTRAINT pk_py_expenditure_economic PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_expenditure_economic VALUES
('level1','KE_1_017',2009,'country','KE','Budget','Development expenditure',4667.13,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Exchequer Issues','Development expenditure',946.23,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Expenditure','Development expenditure',620.1,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Budget','Operations and Maintenance',2387.66,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Exchequer Issues','Operations and Maintenance',1027.57,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Expenditure','Operations and Maintenance',977.77,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Budget','Compensation to Employees',3735.82,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Exchequer Issues','Compensation to Employees',1850.76,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Expenditure','Compensation to Employees',1847.23,'Makueni') ON CONFLICT DO NOTHING;
