SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.people_15_to_49_covered_by_health_insurance DROP CONSTRAINT IF EXISTS pk_people_15_to_49_covered_by_health_insurance;
DROP TABLE IF EXISTS public.people_15_to_49_covered_by_health_insurance;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.people_15_to_49_covered_by_health_insurance (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.people_15_to_49_covered_by_health_insurance ADD CONSTRAINT pk_people_15_to_49_covered_by_health_insurance PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.people_15_to_49_covered_by_health_insurance VALUES
('country','GH',2009,'continent','AFR','Female',55.6,'Ghana'),
('country','GH',2009,'continent','AFR','Male',40.2,'Ghana'),
('level1','GH_1_024',2009,'country','GH','Female',57.3,'Ashanti'),
('level1','GH_1_024',2009,'country','GH','Male',41.7,'Ashanti'),
('level1','GH_1_025',2009,'country','GH','Female',71.8,'Brong Ahafo'),
('level1','GH_1_025',2009,'country','GH','Male',57.2,'Brong Ahafo'),
('level1','GH_1_026',2009,'country','GH','Female',47.2,'Central'),
('level1','GH_1_026',2009,'country','GH','Male',20.8,'Central'),
('level1','GH_1_027',2009,'country','GH','Male',38.7,'Eastern'),
('level1','GH_1_027',2009,'country','GH','Female',53.6,'Eastern'),
('level1','GH_1_028',2009,'country','GH','Female',50.5,'Greater Accra'),
('level1','GH_1_028',2009,'country','GH','Male',45.9,'Greater Accra'),
('level1','GH_1_029',2009,'country','GH','Female',49.6,'Northern'),
('level1','GH_1_029',2009,'country','GH','Male',46.6,'Northern'),
('level1','GH_1_030',2009,'country','GH','Male',59.3,'Upper East'),
('level1','GH_1_030',2009,'country','GH','Female',63.4,'Upper East'),
('level1','GH_1_031',2009,'country','GH','Female',55.3,'Upper West'),
('level1','GH_1_031',2009,'country','GH','Male',45,'Upper West'),
('level1','GH_1_032',2009,'country','GH','Female',59.1,'Volta'),
('level1','GH_1_032',2009,'country','GH','Male',20.4,'Volta'),
('level1','GH_1_033',2009,'country','GH','Female',54.9,'Western'),
('level1','GH_1_033',2009,'country','GH','Male',35.8,'Western') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','GH','allPeople15To49CoveredByHealthInsurances','"Ghana Multiple Indicator Cluster Survey, 2017/18"','https://open.africa/dataset/ghana-multiple-indicator-cluster-survey/resource/5343369d-68d3-42ba-94b9-36a4c688a663') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','GH','allPeople15To49CoveredByHealthInsurances','"Ghana Multiple Indicator Cluster Survey, 2017/18"','https://open.africa/dataset/ghana-multiple-indicator-cluster-survey/resource/5343369d-68d3-42ba-94b9-36a4c688a663') ON CONFLICT DO NOTHING;
