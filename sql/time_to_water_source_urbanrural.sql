SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.time_to_water_source_urbanrural DROP CONSTRAINT IF EXISTS pk_time_to_water_source_urbanrural;
DROP TABLE IF EXISTS public.time_to_water_source_urbanrural;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.time_to_water_source_urbanrural (
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

ALTER TABLE ONLY public.time_to_water_source_urbanrural ADD CONSTRAINT pk_time_to_water_source_urbanrural PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.time_to_water_source_urbanrural VALUES
('country','NG',2009,'continent','AFR','On the premises','Rural',26.6,'Nigeria'),
('country','NG',2009,'continent','AFR','Less than 30 minutes away','Rural',59.2,'Nigeria'),
('country','NG',2009,'continent','AFR','30 minutes or longer away','Rural',14,'Nigeria'),
('country','NG',2009,'continent','AFR','30 minutes or longer away','Urban',11.2,'Nigeria'),
('country','NG',2009,'continent','AFR','On the premises','Urban',41.3,'Nigeria'),
('country','NG',2009,'continent','AFR','Less than 30 minutes away','Urban',47.5,'Nigeria') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','NG','allTimeToWaterSourceUrbanrurals','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/79c38e2f-ff44-4f38-93a9-18f49567dd6b') ON CONFLICT DO NOTHING;
