SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_other_sources_of_revenue DROP CONSTRAINT IF EXISTS pk_py_other_sources_of_revenue;
DROP TABLE IF EXISTS public.py_other_sources_of_revenue;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_other_sources_of_revenue (
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

ALTER TABLE ONLY public.py_other_sources_of_revenue ADD CONSTRAINT pk_py_other_sources_of_revenue PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_other_sources_of_revenue VALUES
('level1','KE_1_001',2009,'country','KE','Annual CARA Allocation','Own Source Revenue',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual Budget Allocation','Own Source Revenue',3452.76,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Receipts','Own Source Revenue',1100.14,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual CARA Allocation','Other Revenues ( World Bank Development Projects)',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual Budget Allocation','Other Revenues ( World Bank Development Projects)',1550,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Receipts','Other Revenues ( World Bank Development Projects)',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual CARA Allocation','A-I-A (Level 5 Hospital)',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual Budget Allocation','A-I-A (Level 5 Hospital)',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Receipts','A-I-A (Level 5 Hospital)',382.91,'Mombasa') ON CONFLICT DO NOTHING;
