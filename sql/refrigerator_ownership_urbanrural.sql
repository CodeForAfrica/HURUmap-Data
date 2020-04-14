SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.refrigerator_ownership_urbanrural DROP CONSTRAINT IF EXISTS pk_refrigerator_ownership_urbanrural;
DROP TABLE IF EXISTS public.refrigerator_ownership_urbanrural;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.refrigerator_ownership_urbanrural (
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

ALTER TABLE ONLY public.refrigerator_ownership_urbanrural ADD CONSTRAINT pk_refrigerator_ownership_urbanrural PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.refrigerator_ownership_urbanrural VALUES
('country','NG',2009,'continent','AFR','Owns a refrigerator','Rural',10.3,'Nigeria'),
('country','NG',2009,'continent','AFR','Owns a refrigerator','Urban',35.3,'Nigeria') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','NG','allRefrigeratorOwnershipUrbanrurals','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/84dc8f64-394f-463f-96b3-8a0ca3bd29bf') ON CONFLICT DO NOTHING;
