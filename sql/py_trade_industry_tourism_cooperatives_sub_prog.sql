SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_trade_industry_tourism_cooperatives_sub_prog DROP CONSTRAINT IF EXISTS pk_py_trade_industry_tourism_cooperatives_sub_prog;
DROP TABLE IF EXISTS public.py_trade_industry_tourism_cooperatives_sub_prog;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_trade_industry_tourism_cooperatives_sub_prog (
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

ALTER TABLE ONLY public.py_trade_industry_tourism_cooperatives_sub_prog ADD CONSTRAINT pk_py_trade_industry_tourism_cooperatives_sub_prog PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_trade_industry_tourism_cooperatives_sub_prog VALUES
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','General administration & planning',44.25,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','General administration & planning',19.77,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Trade marketing & promotion',91.16,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Trade marketing & promotion',3.01,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Industrial development and promotion',3.66,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Industrial development and promotion',0.5,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Tourism development & promotion',8.48,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Tourism development & promotion',2.6,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates','Cooperative development and management',6.89,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure','Cooperative development and management',3.66,'Makueni') ON CONFLICT DO NOTHING;
