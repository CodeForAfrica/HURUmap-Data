SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_trade_tourism_investment_department DROP CONSTRAINT IF EXISTS pk_py_trade_tourism_investment_department;
DROP TABLE IF EXISTS public.py_trade_tourism_investment_department;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_trade_tourism_investment_department (
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

ALTER TABLE ONLY public.py_trade_tourism_investment_department ADD CONSTRAINT pk_py_trade_tourism_investment_department PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_trade_tourism_investment_department VALUES
('level1','KE_1_001',2009,'country','KE','Recurrent','Budget Allocation',465.95,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Development','Budget Allocation',151.06,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Recurrent','Exchequer Issues',178.13,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Development','Exchequer Issues',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Recurrent','Expenditure',112.78,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Development','Expenditure',3.63,'Mombasa') ON CONFLICT DO NOTHING;
