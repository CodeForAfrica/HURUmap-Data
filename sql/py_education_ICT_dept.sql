SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_education_ICT_dept DROP CONSTRAINT IF EXISTS pk_py_education_ICT_dept;
DROP TABLE IF EXISTS public.py_education_ICT_dept;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_education_ICT_dept (
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

ALTER TABLE ONLY public.py_education_ICT_dept ADD CONSTRAINT pk_py_education_ICT_dept PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_education_ICT_dept VALUES
('level1','KE_1_017',2009,'country','KE','Recurrent','Budget Allocation',400.08,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Development','Budget Allocation',339.83,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Recurrent','Exchequer Issues',155.03,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Development','Exchequer Issues',25.24,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Recurrent','Expenditure',178.09,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Development','Expenditure',38.79,'Makueni') ON CONFLICT DO NOTHING;
