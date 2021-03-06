SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.child_poverty_headcount DROP CONSTRAINT IF EXISTS pk_child_poverty_headcount;
DROP TABLE IF EXISTS public.child_poverty_headcount;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.child_poverty_headcount (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.child_poverty_headcount ADD CONSTRAINT pk_child_poverty_headcount PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, value, name);

INSERT INTO public.child_poverty_headcount VALUES
('level1','ZA_1_001',2009,'country','ZA',6.7,'Western Cape'),
('level1','ZA_1_002',2009,'country','ZA',17.8,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA',2.1,'Northern Cape'),
('level1','ZA_1_004',2009,'country','ZA',4.8,'Free State'),
('level1','ZA_1_005',2009,'country','ZA',26.6,'KwaZulu-Natal'),
('level1','ZA_1_006',2009,'country','ZA',7.2,'North West'),
('level1','ZA_1_007',2009,'country','ZA',12.6,'Gauteng'),
('level1','ZA_1_008',2009,'country','ZA',8.3,'Mpumalanga'),
('level1','ZA_1_009',2009,'country','ZA',13.9,'Limpopo'),
('country','ZA',2009,'continent','AFR',11.1,'South Africa') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allChildPovertyHeadcounts','"Men, Women and Children Findings of the Living Conditions Survey, 2015"','https://open.africa/dataset/men-women-and-children-findings-of-the-living-conditions-survey-2015/resource/640bd9d3-43f4-4f3f-bce7-624f4d535d84') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allChildPovertyHeadcounts','"Men, Women and Children Findings of the Living Conditions Survey, 2015"','https://open.africa/dataset/men-women-and-children-findings-of-the-living-conditions-survey-2015/resource/640bd9d3-43f4-4f3f-bce7-624f4d535d84') ON CONFLICT DO NOTHING;
