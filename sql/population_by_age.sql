SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.population_by_age DROP CONSTRAINT IF EXISTS pk_population_by_age;
DROP TABLE IF EXISTS public.population_by_age;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.population_by_age (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.population_by_age VALUES
('country','ZA',2009,'continent','AFR','< 18',20874659,'South Africa'),
('country','ZA',2009,'continent','AFR','>= 65',2952428,'South Africa'),
('country','ZA',2009,'continent','AFR','18 to 64',31826567,'South Africa'),
('country','ZA',2009,'continent','AFR','total',55653654,'South Africa');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allPopulationByAges','"Community Survey, 2016"','https://open.africa/dataset/community-survey-south-africa-2016/resource/72a0babb-b503-4dc6-98bf-3bad3039f321') on conflict do nothing;
