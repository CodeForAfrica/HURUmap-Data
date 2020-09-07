SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_education_ICT_dept_sub_prog DROP CONSTRAINT IF EXISTS pk_py_education_ICT_dept_sub_prog;
DROP TABLE IF EXISTS public.py_education_ICT_dept_sub_prog;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_education_ICT_dept_sub_prog (
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

ALTER TABLE ONLY public.py_education_ICT_dept_sub_prog ADD CONSTRAINT pk_py_education_ICT_dept_sub_prog PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_education_ICT_dept_sub_prog VALUES
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','General administration & planning',271.3,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','General administration & planning',119.38,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Early childhood education',138.24,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Early childhood education',18.61,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Technical training & non formal education',124.95,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Technical training & non formal education',12.59,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Support to education',59.49,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Support to education',49.44,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','ICT Infrastructure & Systems Development',38.17,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','ICT Infrastructure & Systems Development',0.94,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Youth Development',3.44,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Youth Development',0.77,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Sports Development',104.32,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Sports Development',15.15,'Makueni') ON CONFLICT DO NOTHING;
