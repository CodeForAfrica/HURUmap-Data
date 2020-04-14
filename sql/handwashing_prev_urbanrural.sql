SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.handwashing_prev_urbanrural DROP CONSTRAINT IF EXISTS pk_handwashing_prev_urbanrural;
DROP TABLE IF EXISTS public.handwashing_prev_urbanrural;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.handwashing_prev_urbanrural (
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

ALTER TABLE ONLY public.handwashing_prev_urbanrural ADD CONSTRAINT pk_handwashing_prev_urbanrural PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.handwashing_prev_urbanrural VALUES
('country','GH',2009,'continent','AFR','Fixed facility observed','Rural',20,'Ghana'),
('country','GH',2009,'continent','AFR','Mobile object observed','Rural',49.1,'Ghana'),
('country','GH',2009,'continent','AFR','"No handwashing facility observed in the dwelling, yard, or plot"','Rural',30.7,'Ghana'),
('country','GH',2009,'continent','AFR','No permission to see/ Other','Rural',0.2,'Ghana'),
('country','GH',2009,'continent','AFR','Fixed facility observed','Urban',28.4,'Ghana'),
('country','GH',2009,'continent','AFR','Mobile object observed','Urban',46.9,'Ghana'),
('country','GH',2009,'continent','AFR','"No handwashing facility observed in the dwelling, yard, or plot"','Urban',24.2,'Ghana'),
('country','GH',2009,'continent','AFR','No permission to see/ Other','Urban',0.5,'Ghana'),
('country','NG',2009,'continent','AFR','Handwashing was a fixed place','Rural',25.4,'Nigeria'),
('country','NG',2009,'continent','AFR','Handwashing was mobile','Rural',53.4,'Nigeria'),
('country','NG',2009,'continent','AFR','Handwashing was a fixed place','Urban',28.3,'Nigeria'),
('country','NG',2009,'continent','AFR','Handwashing was mobile','Urban',55.7,'Nigeria'),
('country','ZA',2009,'continent','AFR','Handwashing was a fixed place','Urban',67.3,'South Africa'),
('country','ZA',2009,'continent','AFR','Handwashing was mobile','Urban',19.7,'South Africa'),
('country','ZA',2009,'continent','AFR','Handwashing was a fixed place','Non-urban',27.9,'South Africa'),
('country','ZA',2009,'continent','AFR','Handwashing was mobile','Non-urban',54.2,'South Africa') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','GH','allHandwashingPrevUrbanrurals','"Ghana Multiple Indicator Cluster Survey, 2018"','https://open.africa/dataset/ghana-multiple-indicator-cluster-survey/resource/5f88ae4a-7206-4651-8e5f-544d4cd0d7b5') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','NG','allHandwashingPrevUrbanrurals','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/f24227a5-0f6f-4fae-84f6-53515a24f526') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allHandwashingPrevUrbanrurals','"Demographic and Health Survey, 2016"','https://open.africa/dataset/general-household-survey-2018/resource/f5e2b79d-36a6-4f0a-b0c5-84b75675ec00') ON CONFLICT DO NOTHING;
