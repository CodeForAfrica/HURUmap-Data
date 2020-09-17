SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_agric_fisheries_livestock_and_co_operatives_programme DROP CONSTRAINT IF EXISTS pk_py_agric_fisheries_livestock_and_co_operatives_programme;
DROP TABLE IF EXISTS public.py_agric_fisheries_livestock_and_co_operatives_programme;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_agric_fisheries_livestock_and_co_operatives_programme (
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

ALTER TABLE ONLY public.py_agric_fisheries_livestock_and_co_operatives_programme ADD CONSTRAINT pk_py_agric_fisheries_livestock_and_co_operatives_programme PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_agric_fisheries_livestock_and_co_operatives_programme VALUES
('level1','KE_1_001',2009,'country','KE','Approved Budget','Administration Unit-Headquarters',166.04,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Administration Unit-Headquarters',44.83,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Administration Unit-Headquarters',121.2,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Crop Management Unit',64.26,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Crop Management Unit',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Crop Management Unit',64.26,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Livestock Unit',29.24,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Livestock Unit',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Livestock Unit',29.24,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Fisheries Unit-Headquarters',126.27,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Fisheries Unit-Headquarters',5.71,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Fisheries Unit-Headquarters',120.56,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Veterinary Services',27.03,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Veterinary Services',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Veterinary Services',27.03,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Cooperatives',20.19,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Cooperatives',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Cooperatives',20.19,'Mombasa') ON CONFLICT DO NOTHING;
