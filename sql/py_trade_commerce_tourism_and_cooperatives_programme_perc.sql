SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_trade_commerce_tourism_and_cooperatives_programme_perc DROP CONSTRAINT IF EXISTS pk_py_trade_commerce_tourism_and_cooperatives_programme_perc;
DROP TABLE IF EXISTS public.py_trade_commerce_tourism_and_cooperatives_programme_perc;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_trade_commerce_tourism_and_cooperatives_programme_perc (
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

ALTER TABLE ONLY public.py_trade_commerce_tourism_and_cooperatives_programme_perc ADD CONSTRAINT pk_py_trade_commerce_tourism_and_cooperatives_programme_perc PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_trade_commerce_tourism_and_cooperatives_programme_perc VALUES
('level1','KE_1_047',2009,'country','KE','Absorption','General Administration Planning and Support Services',26.9,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Absorption','Public Service Transformation',26.8,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Absorption','Performance Management and Public Service Delivery',6,'Nairobi') ON CONFLICT DO NOTHING;
