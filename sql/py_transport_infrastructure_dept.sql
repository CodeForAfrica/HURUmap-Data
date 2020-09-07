SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_transport_infrastructure_dept DROP CONSTRAINT IF EXISTS pk_py_transport_infrastructure_dept;
DROP TABLE IF EXISTS public.py_transport_infrastructure_dept;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_transport_infrastructure_dept (
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

ALTER TABLE ONLY public.py_transport_infrastructure_dept ADD CONSTRAINT pk_py_transport_infrastructure_dept PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_transport_infrastructure_dept VALUES
('level1','KE_1_017',2009,'country','KE','Recurrent','Budget Allocation',139.87,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Development','Budget Allocation',757.44,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Recurrent','Exchequer Issues',56.19,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Development','Exchequer Issues',90.85,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Recurrent','Expenditure',68.37,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Development','Expenditure',130.97,'Makueni') ON CONFLICT DO NOTHING;
