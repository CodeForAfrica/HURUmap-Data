SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.handwashing_prevalence DROP CONSTRAINT IF EXISTS pk_handwashing_prevalence;
DROP TABLE IF EXISTS public.handwashing_prevalence;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.handwashing_prevalence (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.handwashing_prevalence VALUES
('level1','GH_1_024',2009,'country','GH','Fixed facility observed',28.4,'Ashanti'),
('level1','GH_1_024',2009,'country','GH','Mobile object observed',46.9,'Ashanti'),
('level1','GH_1_024',2009,'country','GH','"No handwashing facility observed in the dwelling, yard, or plot"',24.2,'Ashanti'),
('level1','GH_1_024',2009,'country','GH','No permission to see/ Other',0.4,'Ashanti'),
('level1','GH_1_025',2009,'country','GH','Fixed facility observed',12.2,'Brong Ahafo'),
('level1','GH_1_025',2009,'country','GH','Mobile object observed',42.1,'Brong Ahafo'),
('level1','GH_1_025',2009,'country','GH','"No handwashing facility observed in the dwelling, yard, or plot"',45.1,'Brong Ahafo'),
('level1','GH_1_025',2009,'country','GH','No permission to see/ Other',0.5,'Brong Ahafo'),
('level1','GH_1_026',2009,'country','GH','Fixed facility observed',30.4,'Central'),
('level1','GH_1_026',2009,'country','GH','Mobile object observed',45.9,'Central'),
('level1','GH_1_026',2009,'country','GH','"No handwashing facility observed in the dwelling, yard, or plot"',23.7,'Central'),
('level1','GH_1_026',2009,'country','GH','No permission to see/ Other',0,'Central'),
('level1','GH_1_027',2009,'country','GH','Fixed facility observed',12.9,'Eastern'),
('level1','GH_1_027',2009,'country','GH','Mobile object observed',65.1,'Eastern'),
('level1','GH_1_027',2009,'country','GH','"No handwashing facility observed in the dwelling, yard, or plot"',21.9,'Eastern'),
('level1','GH_1_027',2009,'country','GH','No permission to see/ Other',0,'Eastern'),
('country','GH',2009,'continent','AFR','Fixed facility observed',23.9,'Ghana'),
('country','GH',2009,'continent','AFR','Mobile object observed',48.1,'Ghana'),
('country','GH',2009,'continent','AFR','"No handwashing facility observed in the dwelling, yard, or plot"',27.7,'Ghana'),
('country','GH',2009,'continent','AFR','No permission to see/ Other',0.3,'Ghana'),
('level1','GH_1_028',2009,'country','GH','Fixed facility observed',28.2,'Greater Accra'),
('level1','GH_1_028',2009,'country','GH','Mobile object observed',38.8,'Greater Accra'),
('level1','GH_1_028',2009,'country','GH','"No handwashing facility observed in the dwelling, yard, or plot"',32.6,'Greater Accra'),
('level1','GH_1_028',2009,'country','GH','No permission to see/ Other',0.4,'Greater Accra'),
('level1','GH_1_029',2009,'country','GH','Fixed facility observed',36.8,'Northern'),
('level1','GH_1_029',2009,'country','GH','Mobile object observed',43.3,'Northern'),
('level1','GH_1_029',2009,'country','GH','"No handwashing facility observed in the dwelling, yard, or plot"',19.5,'Northern'),
('level1','GH_1_029',2009,'country','GH','No permission to see/ Other',0.4,'Northern'),
('level1','GH_1_030',2009,'country','GH','Fixed facility observed',23.8,'Upper East'),
('level1','GH_1_030',2009,'country','GH','Mobile object observed',59.9,'Upper East'),
('level1','GH_1_030',2009,'country','GH','"No handwashing facility observed in the dwelling, yard, or plot"',15.9,'Upper East'),
('level1','GH_1_030',2009,'country','GH','No permission to see/ Other',0.4,'Upper East'),
('level1','GH_1_031',2009,'country','GH','Fixed facility observed',42.8,'Upper West'),
('level1','GH_1_031',2009,'country','GH','Mobile object observed',36.2,'Upper West'),
('level1','GH_1_031',2009,'country','GH','"No handwashing facility observed in the dwelling, yard, or plot"',20.3,'Upper West'),
('level1','GH_1_031',2009,'country','GH','No permission to see/ Other',0.6,'Upper West'),
('level1','GH_1_032',2009,'country','GH','Fixed facility observed',9.9,'Volta'),
('level1','GH_1_032',2009,'country','GH','Mobile object observed',44.1,'Volta'),
('level1','GH_1_032',2009,'country','GH','"No handwashing facility observed in the dwelling, yard, or plot"',45.7,'Volta'),
('level1','GH_1_032',2009,'country','GH','No permission to see/ Other',0.3,'Volta'),
('level1','GH_1_033',2009,'country','GH','Fixed facility observed',19.3,'Western'),
('level1','GH_1_033',2009,'country','GH','Mobile object observed',55.3,'Western'),
('level1','GH_1_033',2009,'country','GH','"No handwashing facility observed in the dwelling, yard, or plot"',25.2,'Western'),
('level1','GH_1_033',2009,'country','GH','No permission to see/ Other',0.2,'Western'),
('level1','ZA_1_002',2009,'country','ZA','Handwashing was a fixed place',42.4,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Handwashing was mobile',39.5,'Eastern Cape'),
('level1','ZA_1_004',2009,'country','ZA','Handwashing was a fixed place',64.5,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Handwashing was mobile',22.1,'Free State'),
('level1','ZA_1_007',2009,'country','ZA','Handwashing was mobile',18.6,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Handwashing was a fixed place',61.2,'Gauteng'),
('level1','ZA_1_005',2009,'country','ZA','Handwashing was mobile',25,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Handwashing was a fixed place',55.2,'KwaZulu-Natal'),
('level1','ZA_1_009',2009,'country','ZA','Handwashing was mobile',70.2,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Handwashing was a fixed place',24.6,'Limpopo'),
('level1','ZA_1_008',2009,'country','ZA','Handwashing was mobile',42.6,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Handwashing was a fixed place',47.9,'Mpumalanga'),
('level1','ZA_1_006',2009,'country','ZA','Handwashing was a fixed place',47.3,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Handwashing was mobile',48.2,'North West'),
('level1','ZA_1_003',2009,'country','ZA','Handwashing was mobile',22.9,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Handwashing was a fixed place',67.5,'Northern Cape'),
('country','ZA',2009,'continent','AFR','Handwashing was a fixed place',54.6,'South Africa'),
('country','ZA',2009,'continent','AFR','Handwashing was mobile',33.3,'South Africa'),
('level1','ZA_1_001',2009,'country','ZA','Handwashing was mobile',10.4,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Handwashing was a fixed place',81,'Western Cape');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','GH','allHandwashingPrevalences','"Ghana Multiple Indicator Cluster Survey, 2018"','https://open.africa/dataset/ghana-multiple-indicator-cluster-survey/resource/5f88ae4a-7206-4651-8e5f-544d4cd0d7b5') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','GH','allHandwashingPrevalences','"Ghana Multiple Indicator Cluster Survey, 2018"','https://open.africa/dataset/ghana-multiple-indicator-cluster-survey/resource/5f88ae4a-7206-4651-8e5f-544d4cd0d7b5') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allHandwashingPrevalences','"Demographic and Health Survey, 2016"','https://open.africa/dataset/general-household-survey-2018/resource/f5e2b79d-36a6-4f0a-b0c5-84b75675ec00') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allHandwashingPrevalences','"Demographic and Health Survey, 2016"','https://open.africa/dataset/general-household-survey-2018/resource/f5e2b79d-36a6-4f0a-b0c5-84b75675ec00') on conflict do nothing;

ALTER TABLE ONLY public.handwashing_prevalence ADD CONSTRAINT pk_handwashing_prevalence PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);
