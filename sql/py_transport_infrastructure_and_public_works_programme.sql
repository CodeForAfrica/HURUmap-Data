SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_transport_infrastructure_and_public_works_programme DROP CONSTRAINT IF EXISTS pk_py_transport_infrastructure_and_public_works_programme;
DROP TABLE IF EXISTS public.py_transport_infrastructure_and_public_works_programme;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_transport_infrastructure_and_public_works_programme (
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

ALTER TABLE ONLY public.py_transport_infrastructure_and_public_works_programme ADD CONSTRAINT pk_py_transport_infrastructure_and_public_works_programme PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_transport_infrastructure_and_public_works_programme VALUES
('level1','KE_1_001',2009,'country','KE','Approved Budget','Administration Unit',289,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Administration Unit',211.37,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Administration Unit',77.63,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Road and Transport Unit',473.5,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Road and Transport Unit',168.18,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Road and Transport Unit',305.32,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Works Unit',63.79,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Works Unit',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Works Unit',63.79,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Transport Planning, Management and Safety',146.31,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Transport Planning, Management and Safety',11.95,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Transport Planning, Management and Safety',134.36,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Mechanical Services',77.83,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Mechanical Services',3.27,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Mechanical Services',74.55,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Safety, Risk Management and Rescue Services',42.25,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Safety, Risk Management and Rescue Services',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Safety, Risk Management and Rescue Services',42.25,'Mombasa') ON CONFLICT DO NOTHING;
