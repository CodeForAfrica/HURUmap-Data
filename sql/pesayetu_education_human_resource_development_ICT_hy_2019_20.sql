SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.pesayetu_education_human_resource_development_ICT_hy_2019_20 DROP CONSTRAINT IF EXISTS pk_pesayetu_education_human_resource_development_ICT_hy_2019_20;
DROP TABLE IF EXISTS public.pesayetu_education_human_resource_development_ICT_hy_2019_20;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.pesayetu_education_human_resource_development_ICT_hy_2019_20 (
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

ALTER TABLE ONLY public.pesayetu_education_human_resource_development_ICT_hy_2019_20 ADD CONSTRAINT pk_pesayetu_education_human_resource_development_ICT_hy_2019_20 PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.pesayetu_education_human_resource_development_ICT_hy_2019_20 VALUES
('level1','KE_1_042',2009,'country','KE','Recurrent','Budget Allocation',372.18,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Development','Budget Allocation',266.34,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Recurrent','Exchequer Issues',74.03,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Development','Exchequer Issues',0,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Recurrent','Expenditure',165.82,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Development','Expenditure',33.76,'Kisumu') ON CONFLICT DO NOTHING;
