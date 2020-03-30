SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.prevalence_of_handwashing_facilities DROP CONSTRAINT IF EXISTS pk_prevalence_of_handwashing_facilities;
DROP TABLE IF EXISTS public.prevalence_of_handwashing_facilities;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.prevalence_of_handwashing_facilities (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.prevalence_of_handwashing_facilities VALUES
('level1','ZA_1_008',2009,'country','ZA',81.7,'Western Cape'),
('level1','ZA_1_003',2009,'country','ZA',63.1,'Eastern Cape'),
('level1','ZA_1_006',2009,'country','ZA',73.67,'Northern Cape'),
('level1','ZA_1_002',2009,'country','ZA',72.55,'Free State'),
('level1','ZA_1_001',2009,'country','ZA',53.65,'KwaZulu-Natal'),
('level1','ZA_1_007',2009,'country','ZA',55.66,'North West'),
('level1','ZA_1_009',2009,'country','ZA',82.79,'Gauteng'),
('level1','ZA_1_004',2009,'country','ZA',51.17,'Mpumalanga'),
('level1','ZA_1_005',2009,'country','ZA',32.39,'Limpopo'),
('country','ZA',2009,'continent','AFR',62.96,'South Africa');
      
INSERT into public.sources(geo_level, country_code, pg_table_name, table_name, source_title, source_link) VALUES('level1','ZA','prevalence_of_handwashing_facilities','allPrevalenceOfHandwashingFacilities','"General Household Survey, 2018"','https://open.africa/dataset/general-household-survey-2018/resource/f5e2b79d-36a6-4f0a-b0c5-84b75675ec00') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, pg_table_name, table_name, source_title, source_link) VALUES('country','ZA','prevalence_of_handwashing_facilities','allPrevalenceOfHandwashingFacilities','"General Household Survey, 2018"','https://open.africa/dataset/general-household-survey-2018/resource/f5e2b79d-36a6-4f0a-b0c5-84b75675ec00') on conflict do nothing;
