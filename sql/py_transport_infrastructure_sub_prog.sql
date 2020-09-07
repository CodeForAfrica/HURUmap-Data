SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_transport_infrastructure_sub_prog DROP CONSTRAINT IF EXISTS pk_py_transport_infrastructure_sub_prog;
DROP TABLE IF EXISTS public.py_transport_infrastructure_sub_prog;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_transport_infrastructure_sub_prog (
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

ALTER TABLE ONLY public.py_transport_infrastructure_sub_prog ADD CONSTRAINT pk_py_transport_infrastructure_sub_prog PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_transport_infrastructure_sub_prog VALUES
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','General administration & planning',107.75,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','General administration & planning',41.45,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Road transport',722.89,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Road transport',130.4,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Infrastructure development',51.39,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Infrastructure development',13.54,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Energy Infrastructure & development',15.27,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Energy Infrastructure & development',2.94,'Makueni') ON CONFLICT DO NOTHING;
