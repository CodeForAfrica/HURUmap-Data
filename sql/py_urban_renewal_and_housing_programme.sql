SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_urban_renewal_and_housing_programme DROP CONSTRAINT IF EXISTS pk_py_urban_renewal_and_housing_programme;
DROP TABLE IF EXISTS public.py_urban_renewal_and_housing_programme;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_urban_renewal_and_housing_programme (
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

ALTER TABLE ONLY public.py_urban_renewal_and_housing_programme ADD CONSTRAINT pk_py_urban_renewal_and_housing_programme PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_urban_renewal_and_housing_programme VALUES
('level1','KE_1_047',2009,'country','KE','Approved Budget','General Administration Planning and Support Services',1078.1,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','General Administration Planning and Support Services',382.07,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','General Administration Planning and Support Services',696.03,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Approved Budget','Roads, Drainage & Bridges',3257.86,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','Roads, Drainage & Bridges',19.39,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','Roads, Drainage & Bridges',3238.47,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Approved Budget','Road Safety Interventions',187.62,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','Road Safety Interventions',14.72,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','Road Safety Interventions',172.9,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Approved Budget','Institutional Buildings & Maintenance',255.7,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','Institutional Buildings & Maintenance',6.05,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','Institutional Buildings & Maintenance',249.65,'Nairobi') ON CONFLICT DO NOTHING;
