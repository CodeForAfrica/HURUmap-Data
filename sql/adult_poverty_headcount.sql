SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.adult_poverty_headcount DROP CONSTRAINT IF EXISTS pk_adult_poverty_headcount;
DROP TABLE IF EXISTS public.adult_poverty_headcount;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.adult_poverty_headcount (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.adult_poverty_headcount VALUES
('level1','ZA_1_003',2009,'country','ZA','Male',65.1,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Female',69.2,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Male',46.7,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Female',51,'Free State'),
('level1','ZA_1_009',2009,'country','ZA','Female',31.1,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Male',27.5,'Gauteng'),
('level1','ZA_1_001',2009,'country','ZA','Female',64.9,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Male',55.9,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Female',70.7,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Male',63.5,'Limpopo'),
('level1','ZA_1_004',2009,'country','ZA','Female',57.3,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Male',51.7,'Mpumalanga'),
('level1','ZA_1_007',2009,'country','ZA','Male',55.5,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Female',63.6,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Female',56.5,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Male',51.8,'Northern Cape'),
('country','ZA',2009,'continent','AFR','Male',46.1,'South Africa'),
('country','ZA',2009,'continent','AFR','Female',52,'South Africa'),
('level1','ZA_1_008',2009,'country','ZA','Female',34.1,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Male',32.2,'Western Cape');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allAdultPovertyHeadcounts','"Men, Women and Children Findings of the Living Conditions Survey, 2015"','https://open.africa/dataset/men-women-and-children-findings-of-the-living-conditions-survey-2015/resource/a5ea1811-044a-4d68-9316-0085132cbcca') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allAdultPovertyHeadcounts','"Men, Women and Children Findings of the Living Conditions Survey, 2015"','https://open.africa/dataset/men-women-and-children-findings-of-the-living-conditions-survey-2015/resource/a5ea1811-044a-4d68-9316-0085132cbcca') on conflict do nothing;
