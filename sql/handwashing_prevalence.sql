SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.handwashing_prevalence DROP CONSTRAINT IF EXISTS pk_handwashing_prevalence;
DROP TABLE IF EXISTS public.handwashing_prevalence;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.handwashing_prevalence (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.handwashing_prevalence VALUES
('level1','ZA_1_003',2009,'country','ZA','Handwashing was a fixed place',42.4,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Handwashing was mobile',39.5,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Handwashing was a fixed place',64.5,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Handwashing was mobile',22.1,'Free State'),
('level1','ZA_1_009',2009,'country','ZA','Handwashing was mobile',18.6,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Handwashing was a fixed place',61.2,'Gauteng'),
('level1','ZA_1_001',2009,'country','ZA','Handwashing was mobile',25,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Handwashing was a fixed place',55.2,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Handwashing was mobile',70.2,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Handwashing was a fixed place',24.6,'Limpopo'),
('level1','ZA_1_004',2009,'country','ZA','Handwashing was mobile',42.6,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Handwashing was a fixed place',47.9,'Mpumalanga'),
('level1','ZA_1_007',2009,'country','ZA','Handwashing was a fixed place',47.3,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Handwashing was mobile',48.2,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Handwashing was mobile',22.9,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Handwashing was a fixed place',67.5,'Northern Cape'),
('country','ZA',2009,'continent','AFR','Handwashing was a fixed place',54.6,'South Africa'),
('country','ZA',2009,'continent','AFR','Handwashing was mobile',33.3,'South Africa'),
('level1','ZA_1_008',2009,'country','ZA','Handwashing was mobile',10.4,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Handwashing was a fixed place',81,'Western Cape');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allHandwashingPrevalences','"Demographic and Health Survey, 2016"','https://open.africa/dataset/general-household-survey-2018/resource/f5e2b79d-36a6-4f0a-b0c5-84b75675ec00') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allHandwashingPrevalences','"Demographic and Health Survey, 2016"','https://open.africa/dataset/general-household-survey-2018/resource/f5e2b79d-36a6-4f0a-b0c5-84b75675ec00') on conflict do nothing;
