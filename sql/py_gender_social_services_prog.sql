SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_gender_social_services_prog DROP CONSTRAINT IF EXISTS pk_py_gender_social_services_prog;
DROP TABLE IF EXISTS public.py_gender_social_services_prog;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_gender_social_services_prog (
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

ALTER TABLE ONLY public.py_gender_social_services_prog ADD CONSTRAINT pk_py_gender_social_services_prog PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_gender_social_services_prog VALUES
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','General administration & planning',62.73,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','General administration & planning',25.06,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Gender & Social Development',108.92,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Gender & Social Development',5.65,'Makueni') ON CONFLICT DO NOTHING;
