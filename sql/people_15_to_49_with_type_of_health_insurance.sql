SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.people_15_to_49_with_type_of_health_insurance DROP CONSTRAINT IF EXISTS pk_people_15_to_49_with_type_of_health_insurance;
DROP TABLE IF EXISTS public.people_15_to_49_with_type_of_health_insurance;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.people_15_to_49_with_type_of_health_insurance (
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

INSERT INTO public.people_15_to_49_with_type_of_health_insurance VALUES
('country','GH',2009,'continent','AFR','Female','National Health Insurance Service',99.5,'Ghana'),
('country','GH',2009,'continent','AFR','Male','National Health Insurance Service',98.8,'Ghana'),
('country','GH',2009,'continent','AFR','Female','Health insurance through employer',0.6,'Ghana'),
('country','GH',2009,'continent','AFR','Male','Health insurance through employer',0.9,'Ghana'),
('country','GH',2009,'continent','AFR','Female','Other privately purchased commercial health insurance',0.4,'Ghana'),
('country','GH',2009,'continent','AFR','Male','Other privately purchased commercial health insurance',1,'Ghana'),
('country','GH',2009,'continent','AFR','Female','Other',0.1,'Ghana'),
('country','GH',2009,'continent','AFR','Male','Other',0,'Ghana'),
('level1','GH_1_024',2009,'country','GH','Female','National Health Insurance Service',99.2,'Ashanti'),
('level1','GH_1_024',2009,'country','GH','Male','National Health Insurance Service',98.2,'Ashanti'),
('level1','GH_1_024',2009,'country','GH','Female','Health insurance through employer',1,'Ashanti'),
('level1','GH_1_024',2009,'country','GH','Male','Health insurance through employer',0.7,'Ashanti'),
('level1','GH_1_024',2009,'country','GH','Female','Other privately purchased commercial health insurance',0.7,'Ashanti'),
('level1','GH_1_024',2009,'country','GH','Male','Other privately purchased commercial health insurance',1.1,'Ashanti'),
('level1','GH_1_024',2009,'country','GH','Female','Other',0,'Ashanti'),
('level1','GH_1_024',2009,'country','GH','Male','Other',0,'Ashanti'),
('level1','GH_1_025',2009,'country','GH','Female','National Health Insurance Service',100,'Brong Ahafo'),
('level1','GH_1_025',2009,'country','GH','Male','National Health Insurance Service',99.9,'Brong Ahafo'),
('level1','GH_1_025',2009,'country','GH','Female','Health insurance through employer',0.3,'Brong Ahafo'),
('level1','GH_1_025',2009,'country','GH','Male','Health insurance through employer',0.2,'Brong Ahafo'),
('level1','GH_1_025',2009,'country','GH','Female','Other privately purchased commercial health insurance',0.5,'Brong Ahafo'),
('level1','GH_1_025',2009,'country','GH','Male','Other privately purchased commercial health insurance',0,'Brong Ahafo'),
('level1','GH_1_025',2009,'country','GH','Female','Other',0,'Brong Ahafo'),
('level1','GH_1_025',2009,'country','GH','Male','Other',0,'Brong Ahafo'),
('level1','GH_1_026',2009,'country','GH','Female','National Health Insurance Service',100,'Central'),
('level1','GH_1_026',2009,'country','GH','Male','National Health Insurance Service',99.5,'Central'),
('level1','GH_1_026',2009,'country','GH','Female','Health insurance through employer',0.2,'Central'),
('level1','GH_1_026',2009,'country','GH','Male','Health insurance through employer',0.5,'Central'),
('level1','GH_1_026',2009,'country','GH','Female','Other privately purchased commercial health insurance',0.1,'Central'),
('level1','GH_1_026',2009,'country','GH','Male','Other privately purchased commercial health insurance',0,'Central'),
('level1','GH_1_026',2009,'country','GH','Female','Other',0,'Central'),
('level1','GH_1_026',2009,'country','GH','Male','Other',0,'Central'),
('level1','GH_1_027',2009,'country','GH','Male','National Health Insurance Service',100,'Eastern'),
('level1','GH_1_027',2009,'country','GH','Female','National Health Insurance Service',99.7,'Eastern'),
('level1','GH_1_027',2009,'country','GH','Male','Health insurance through employer',0,'Eastern'),
('level1','GH_1_027',2009,'country','GH','Female','Health insurance through employer',0.1,'Eastern'),
('level1','GH_1_027',2009,'country','GH','Male','Other privately purchased commercial health insurance',2.5,'Eastern'),
('level1','GH_1_027',2009,'country','GH','Female','Other privately purchased commercial health insurance',0.3,'Eastern'),
('level1','GH_1_027',2009,'country','GH','Male','Other',0,'Eastern'),
('level1','GH_1_027',2009,'country','GH','Female','Other',0.4,'Eastern'),
('level1','GH_1_028',2009,'country','GH','Female','National Health Insurance Service',98.3,'Greater Accra'),
('level1','GH_1_028',2009,'country','GH','Male','National Health Insurance Service',96,'Greater Accra'),
('level1','GH_1_028',2009,'country','GH','Female','Health insurance through employer',1.8,'Greater Accra'),
('level1','GH_1_028',2009,'country','GH','Male','Health insurance through employer',3.2,'Greater Accra'),
('level1','GH_1_028',2009,'country','GH','Female','Other privately purchased commercial health insurance',0.5,'Greater Accra'),
('level1','GH_1_028',2009,'country','GH','Male','Other privately purchased commercial health insurance',1.7,'Greater Accra'),
('level1','GH_1_028',2009,'country','GH','Female','Other',0.1,'Greater Accra'),
('level1','GH_1_028',2009,'country','GH','Male','Other',0.3,'Greater Accra'),
('level1','GH_1_029',2009,'country','GH','Female','National Health Insurance Service',100,'Northern'),
('level1','GH_1_029',2009,'country','GH','Male','National Health Insurance Service',100,'Northern'),
('level1','GH_1_029',2009,'country','GH','Female','Health insurance through employer',0,'Northern'),
('level1','GH_1_029',2009,'country','GH','Male','Health insurance through employer',0.6,'Northern'),
('level1','GH_1_029',2009,'country','GH','Female','Other privately purchased commercial health insurance',0,'Northern'),
('level1','GH_1_029',2009,'country','GH','Male','Other privately purchased commercial health insurance',0,'Northern'),
('level1','GH_1_029',2009,'country','GH','Female','Other',0,'Northern'),
('level1','GH_1_029',2009,'country','GH','Male','Other',0,'Northern'),
('level1','GH_1_030',2009,'country','GH','Male','National Health Insurance Service',100,'Upper East'),
('level1','GH_1_030',2009,'country','GH','Female','National Health Insurance Service',100,'Upper East'),
('level1','GH_1_030',2009,'country','GH','Male','Health insurance through employer',0,'Upper East'),
('level1','GH_1_030',2009,'country','GH','Female','Health insurance through employer',0,'Upper East'),
('level1','GH_1_030',2009,'country','GH','Male','Other privately purchased commercial health insurance',0,'Upper East'),
('level1','GH_1_030',2009,'country','GH','Female','Other privately purchased commercial health insurance',0.2,'Upper East'),
('level1','GH_1_030',2009,'country','GH','Male','Other',0,'Upper East'),
('level1','GH_1_030',2009,'country','GH','Female','Other',0,'Upper East'),
('level1','GH_1_031',2009,'country','GH','Female','National Health Insurance Service',100,'Upper West'),
('level1','GH_1_031',2009,'country','GH','Male','National Health Insurance Service',100,'Upper West'),
('level1','GH_1_031',2009,'country','GH','Female','Health insurance through employer',0,'Upper West'),
('level1','GH_1_031',2009,'country','GH','Male','Health insurance through employer',0.8,'Upper West'),
('level1','GH_1_031',2009,'country','GH','Female','Other privately purchased commercial health insurance',0,'Upper West'),
('level1','GH_1_031',2009,'country','GH','Male','Other privately purchased commercial health insurance',0,'Upper West'),
('level1','GH_1_031',2009,'country','GH','Female','Other',0,'Upper West'),
('level1','GH_1_031',2009,'country','GH','Male','Other',0,'Upper West'),
('level1','GH_1_032',2009,'country','GH','Female','National Health Insurance Service',99.4,'Volta'),
('level1','GH_1_032',2009,'country','GH','Male','National Health Insurance Service',98.1,'Volta'),
('level1','GH_1_032',2009,'country','GH','Female','Health insurance through employer',0.3,'Volta'),
('level1','GH_1_032',2009,'country','GH','Male','Health insurance through employer',1.6,'Volta'),
('level1','GH_1_032',2009,'country','GH','Female','Other privately purchased commercial health insurance',0.6,'Volta'),
('level1','GH_1_032',2009,'country','GH','Male','Other privately purchased commercial health insurance',1.6,'Volta'),
('level1','GH_1_032',2009,'country','GH','Female','Other',0,'Volta'),
('level1','GH_1_032',2009,'country','GH','Male','Other',0,'Volta'),
('level1','GH_1_033',2009,'country','GH','Female','National Health Insurance Service',100,'Western'),
('level1','GH_1_033',2009,'country','GH','Male','National Health Insurance Service',98.8,'Western'),
('level1','GH_1_033',2009,'country','GH','Female','Health insurance through employer',0.9,'Western'),
('level1','GH_1_033',2009,'country','GH','Male','Health insurance through employer',1.3,'Western'),
('level1','GH_1_033',2009,'country','GH','Female','Other privately purchased commercial health insurance',0.6,'Western'),
('level1','GH_1_033',2009,'country','GH','Male','Other privately purchased commercial health insurance',1.2,'Western'),
('level1','GH_1_033',2009,'country','GH','Female','Other',0,'Western'),
('level1','GH_1_033',2009,'country','GH','Male','Other',0,'Western');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','GH','allPeople15To49WithTypeOfHealthInsurances','"Ghana Multiple Indicator Cluster Survey, 2017/18"','https://open.africa/dataset/ghana-multiple-indicator-cluster-survey/resource/5343369d-68d3-42ba-94b9-36a4c688a663') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','GH','allPeople15To49WithTypeOfHealthInsurances','"Ghana Multiple Indicator Cluster Survey, 2017/18"','https://open.africa/dataset/ghana-multiple-indicator-cluster-survey/resource/5343369d-68d3-42ba-94b9-36a4c688a663') on conflict do nothing;

ALTER TABLE ONLY public.people_15_to_49_with_type_of_health_insurance ADD CONSTRAINT pk_people_15_to_49_with_type_of_health_insurance PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);
