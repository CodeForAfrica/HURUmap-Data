SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_finance_and_economic_planning_programme DROP CONSTRAINT IF EXISTS pk_py_finance_and_economic_planning_programme;
DROP TABLE IF EXISTS public.py_finance_and_economic_planning_programme;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_finance_and_economic_planning_programme (
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

ALTER TABLE ONLY public.py_finance_and_economic_planning_programme ADD CONSTRAINT pk_py_finance_and_economic_planning_programme PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_finance_and_economic_planning_programme VALUES
('level1','KE_1_001',2009,'country','KE','Approved Budget','Administration Unit',130.47,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Administration Unit',15.51,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Administration Unit',114.96,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Accounting Unit',1556.8,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Accounting Unit',577.71,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Accounting Unit',979.09,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Planning and Monitoring Unit',79.1,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Planning and Monitoring Unit',52.31,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Planning and Monitoring Unit',26.79,'Mombasa') ON CONFLICT DO NOTHING;
