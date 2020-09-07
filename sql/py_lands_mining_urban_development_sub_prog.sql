SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_lands_mining_urban_development_sub_prog DROP CONSTRAINT IF EXISTS pk_py_lands_mining_urban_development_sub_prog;
DROP TABLE IF EXISTS public.py_lands_mining_urban_development_sub_prog;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_lands_mining_urban_development_sub_prog (
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

ALTER TABLE ONLY public.py_lands_mining_urban_development_sub_prog ADD CONSTRAINT pk_py_lands_mining_urban_development_sub_prog PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_lands_mining_urban_development_sub_prog VALUES
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates FY 2019/20','General administration & planning',48.95,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure    First Half FY 2019/20','General administration & planning',15.91,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates FY 2019/20','Land Survey & Mapping',42,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure    First Half FY 2019/20','Land Survey & Mapping',0.6,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates FY 2019/20','Urban planning',256.4,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure    First Half FY 2019/20','Urban planning',40.51,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Revised Budget Estimates FY 2019/20','Mining mapping & development',1.92,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Cumulative Expenditure    First Half FY 2019/20','Mining mapping & development',0.34,'Makueni') ON CONFLICT DO NOTHING;
