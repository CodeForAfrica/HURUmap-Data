SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_trade_commerce_tourism_and_cooperatives_programme DROP CONSTRAINT IF EXISTS pk_py_trade_commerce_tourism_and_cooperatives_programme;
DROP TABLE IF EXISTS public.py_trade_commerce_tourism_and_cooperatives_programme;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_trade_commerce_tourism_and_cooperatives_programme (
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

ALTER TABLE ONLY public.py_trade_commerce_tourism_and_cooperatives_programme ADD CONSTRAINT pk_py_trade_commerce_tourism_and_cooperatives_programme PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_trade_commerce_tourism_and_cooperatives_programme VALUES
('level1','KE_1_047',2009,'country','KE','Approved Budget','General Administration Planning and Support Services',297.66,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','General Administration Planning and Support Services',79.94,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','General Administration Planning and Support Services',217.72,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Approved Budget','Public Service Transformation',74.79,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','Public Service Transformation',20.04,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','Public Service Transformation',105.15,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Approved Budget','Performance Management and Public Service Delivery',44,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','Performance Management and Public Service Delivery',2.64,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','Performance Management and Public Service Delivery',41.36,'Nairobi') ON CONFLICT DO NOTHING;
