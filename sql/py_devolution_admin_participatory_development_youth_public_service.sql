SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_devolution_admin_participatory_development_youth_public_service DROP CONSTRAINT IF EXISTS pk_py_devolution_admin_participatory_development_youth_public_service;
DROP TABLE IF EXISTS public.py_devolution_admin_participatory_development_youth_public_service;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_devolution_admin_participatory_development_youth_public_service (
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

ALTER TABLE ONLY public.py_devolution_admin_participatory_development_youth_public_service ADD CONSTRAINT pk_py_devolution_admin_participatory_development_youth_public_service PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_devolution_admin_participatory_development_youth_public_service VALUES
('level1','KE_1_017',2009,'country','KE','Recurrent','Budget Allocation',270.16,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Development','Budget Allocation',100.08,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Recurrent','Exchequer Issues',120.87,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Development','Exchequer Issues',5.75,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Recurrent','Expenditure',122.38,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Development','Expenditure',4.86,'Makueni') ON CONFLICT DO NOTHING;
