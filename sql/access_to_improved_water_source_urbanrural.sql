SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.access_to_improved_water_source_urbanrural DROP CONSTRAINT IF EXISTS pk_access_to_improved_water_source_urbanrural;
DROP TABLE IF EXISTS public.access_to_improved_water_source_urbanrural;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.access_to_improved_water_source_urbanrural (
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

ALTER TABLE ONLY public.access_to_improved_water_source_urbanrural ADD CONSTRAINT pk_access_to_improved_water_source_urbanrural PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.access_to_improved_water_source_urbanrural VALUES
('country','NG',2009,'continent','AFR','Improved water source','Rural',55.4,'Nigeria'),
('country','NG',2009,'continent','AFR','Unimproved water source','Rural',44.6,'Nigeria'),
('country','NG',2009,'continent','AFR','Unimproved water source','Urban',29.2,'Nigeria'),
('country','NG',2009,'continent','AFR','Improved water source','Urban',70.6,'Nigeria') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','NG','allAccessToImprovedWaterSourceUrbanrurals','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/5d566ac3-5b8f-4b5c-9829-54d70781c9b7') ON CONFLICT DO NOTHING;
