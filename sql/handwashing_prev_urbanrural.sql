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

INSERT INTO public.handwashing_prev_urbanrural VALUES
('country','ZA',2009,'continent','AFR','Handwashing was a fixed place','Urban',67.3,'South Africa'),
('country','ZA',2009,'continent','AFR','Handwashing was mobile','Urban',19.7,'South Africa'),
('country','ZA',2009,'continent','AFR','Handwashing was a fixed place','Non-urban',27.9,'South Africa'),
('country','ZA',2009,'continent','AFR','Handwashing was mobile','Non-urban',54.2,'South Africa');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allHandwashingPrevUrbanrurals','"Demographic and Health Survey, 2016"','https://open.africa/dataset/general-household-survey-2018/resource/f5e2b79d-36a6-4f0a-b0c5-84b75675ec00') on conflict do nothing;
