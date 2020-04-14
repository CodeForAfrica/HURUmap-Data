SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.access_to_electricity_urbanrural DROP CONSTRAINT IF EXISTS pk_access_to_electricity_urbanrural;
DROP TABLE IF EXISTS public.access_to_electricity_urbanrural;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.access_to_electricity_urbanrural (
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

ALTER TABLE ONLY public.access_to_electricity_urbanrural ADD CONSTRAINT pk_access_to_electricity_urbanrural PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.access_to_electricity_urbanrural VALUES
('country','NG',2009,'continent','AFR','Access to electricity','Rural',38.9,'Nigeria'),
('country','NG',2009,'continent','AFR','No electricity','Rural',61.1,'Nigeria'),
('country','NG',2009,'continent','AFR','No electricity','Urban',17.3,'Nigeria'),
('country','NG',2009,'continent','AFR','Access to electricity','Urban',82.7,'Nigeria') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','NG','allAccessToElectricityUrbanrurals','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/5f1d945d-5fb1-4dac-9e5b-4c6cc75cf0b8') ON CONFLICT DO NOTHING;
