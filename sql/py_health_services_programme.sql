SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_health_services_programme DROP CONSTRAINT IF EXISTS pk_py_health_services_programme;
DROP TABLE IF EXISTS public.py_health_services_programme;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_health_services_programme (
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

ALTER TABLE ONLY public.py_health_services_programme ADD CONSTRAINT pk_py_health_services_programme PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_health_services_programme VALUES
('level1','KE_1_001',2009,'country','KE','Approved Budget','Administration Unit',2551.27,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Administration Unit',1288.39,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Administration Unit',1262.87,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Curative/Clinical Health Services',266.5,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Curative/Clinical Health Services',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Curative/Clinical Health Services',266.5,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Preventive and Promotive Services Unit',205.12,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Preventive and Promotive Services Unit',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Preventive and Promotive Services Unit',205.12,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Special Programs',22.59,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Special Programs',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Special Programs',22.59,'Mombasa') ON CONFLICT DO NOTHING;
