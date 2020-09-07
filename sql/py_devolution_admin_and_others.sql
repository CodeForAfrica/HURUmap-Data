SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_devolution_admin_and_others DROP CONSTRAINT IF EXISTS pk_py_devolution_admin_and_others;
DROP TABLE IF EXISTS public.py_devolution_admin_and_others;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_devolution_admin_and_others (
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

ALTER TABLE ONLY public.py_devolution_admin_and_others ADD CONSTRAINT pk_py_devolution_admin_and_others PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_devolution_admin_and_others VALUES
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','General administration & planning',249.82,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','General administration & planning',113.58,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Public Participation & Civic Education',21.8,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Public Participation & Civic Education',6.27,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Information and communication',2.44,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Information and communication',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates FY 2019/21','Enforcement and compliance',10.4,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure First Half FY 2019/21','Enforcement and compliance',3.25,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates FY 2019/22','Volunteerism & mentorship',14,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure First Half FY 2019/22','Volunteerism & mentorship',1.37,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates FY 2019/22','Youth Development',71.78,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure First Half FY 2019/22','Youth Development',2.76,'Makueni') ON CONFLICT DO NOTHING;
