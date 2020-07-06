SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.icu_beds_and_ventilators DROP CONSTRAINT IF EXISTS pk_icu_beds_and_ventilators;
DROP TABLE IF EXISTS public.icu_beds_and_ventilators;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.icu_beds_and_ventilators (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable_2_ TEXT,
	variable_1 TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.icu_beds_and_ventilators ADD CONSTRAINT pk_icu_beds_and_ventilators PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2_, variable_1, value, name);

INSERT INTO public.icu_beds_and_ventilators VALUES
('country','ZA',2009,'continent','AFR','Critical care beds','Private hospitals',2140,'South Africa'),
('country','ZA',2009,'continent','AFR','Critical care beds','Public hospitals',1178,'South Africa'),
('country','ZA',2009,'continent','AFR','High care beds','Public hospitals',1082,'South Africa'),
('country','ZA',2009,'continent','AFR','High care beds','Private hospitals',1640,'South Africa'),
('country','ZA',2009,'continent','AFR','Ventilators','Public hospitals',1111,'South Africa'),
('country','ZA',2009,'continent','AFR','Ventilators','Private hospitals',2105,'South Africa') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allIcuBedsAndVentilators','"Department of Health, 2020"','https://open.africa/dataset/healthcare-system-s-state-of-readiness-for-covid-19-2020/resource/c1d1d483-89c8-4064-b5e0-10a1e36de935') ON CONFLICT DO NOTHING;
