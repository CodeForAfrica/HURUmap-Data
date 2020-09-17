SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_trade_tourism_and_investment_programme DROP CONSTRAINT IF EXISTS pk_py_trade_tourism_and_investment_programme;
DROP TABLE IF EXISTS public.py_trade_tourism_and_investment_programme;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_trade_tourism_and_investment_programme (
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

ALTER TABLE ONLY public.py_trade_tourism_and_investment_programme ADD CONSTRAINT pk_py_trade_tourism_and_investment_programme PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_trade_tourism_and_investment_programme VALUES
('level1','KE_1_001',2009,'country','KE','Approved Budget','Administration Unit',329.77,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Administration Unit',114.35,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Administration Unit',215.42,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Trade Development',83.41,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Trade Development',2.06,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Trade Development',81.35,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Development of Tourism',98.41,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Development of Tourism',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Development of Tourism',98.41,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Investment Promotion and Products Headquarters',91.41,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Investment Promotion and Products Headquarters',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Investment Promotion and Products Headquarters',91.41,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Ease of Doing Business-Headquarters',14,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Ease of Doing Business-Headquarters',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Ease of Doing Business-Headquarters',14,'Mombasa') ON CONFLICT DO NOTHING;
