SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.doctors_per_100000_uninsured DROP CONSTRAINT IF EXISTS pk_doctors_per_100000_uninsured;
DROP TABLE IF EXISTS public.doctors_per_100000_uninsured;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.doctors_per_100000_uninsured (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT,
	 NUMERIC
);

ALTER TABLE ONLY public.doctors_per_100000_uninsured ADD CONSTRAINT pk_doctors_per_100000_uninsured PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name, );

INSERT INTO public.doctors_per_100000_uninsured VALUES
 ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allDoctorsPer100000Uninsureds','"South African Health Review, 2019"','https://open.africa/dataset/south-african-health-review-2019/resource/886a8faa-7444-4cc5-9adc-5d72d2d62a67') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allDoctorsPer100000Uninsureds','"South African Health Review, 2019"','https://open.africa/dataset/south-african-health-review-2019/resource/886a8faa-7444-4cc5-9adc-5d72d2d62a67') ON CONFLICT DO NOTHING;
