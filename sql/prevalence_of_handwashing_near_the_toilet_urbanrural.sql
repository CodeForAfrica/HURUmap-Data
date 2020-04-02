SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.prevalence_of_handwashing_near_the_toilet_urbanrural DROP CONSTRAINT IF EXISTS pk_prevalence_of_handwashing_near_the_toilet_urbanrural;
DROP TABLE IF EXISTS public.prevalence_of_handwashing_near_the_toilet_urbanrural;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.prevalence_of_handwashing_near_the_toilet_urbanrural (
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

INSERT INTO public.prevalence_of_handwashing_near_the_toilet_urbanrural VALUES
('country','KE',2009,'continent','AFR','No place to wash hands','Rural',86.5,'Kenya'),
('country','KE',2009,'continent','AFR','Not stated','Rural',0.3,'Kenya'),
('country','KE',2009,'continent','AFR','Place to wash hands','Rural',13.2,'Kenya'),
('country','KE',2009,'continent','AFR','Not stated','Urban',0.5,'Kenya'),
('country','KE',2009,'continent','AFR','No place to wash hands','Urban',69.2,'Kenya'),
('country','KE',2009,'continent','AFR','Place to wash hands','Urban',30.2,'Kenya');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','KE','allPrevalenceOfHandwashingNearTheToiletUrbanrurals','"Kenya Integrated Household Budget Survey, 2016"','https://open.africa/dataset/kenya-integrated-household-budget-survey-2016/resource/4cf6156d-515b-4d4f-8fdf-3f2dd301ae88') on conflict do nothing;
