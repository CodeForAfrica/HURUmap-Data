SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_change_health_sector_mgnt_sys DROP CONSTRAINT IF EXISTS pk_py_change_health_sector_mgnt_sys;
DROP TABLE IF EXISTS public.py_change_health_sector_mgnt_sys;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_change_health_sector_mgnt_sys (
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

ALTER TABLE ONLY public.py_change_health_sector_mgnt_sys ADD CONSTRAINT pk_py_change_health_sector_mgnt_sys PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_change_health_sector_mgnt_sys VALUES
('level1','KE_1_047',2009,'country','KE','Frequency of medicine supplies','Change all health sector management systems',0,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','No. of CHVs with community based health information tools. (MOH 100, 513, 514, 515,516)','Change all health sector management systems',6200,'Nairobi') ON CONFLICT DO NOTHING;
