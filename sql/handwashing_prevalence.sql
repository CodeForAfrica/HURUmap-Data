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

ALTER TABLE ONLY public.handwashing_prevalence ADD CONSTRAINT pk_handwashing_prevalence PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.handwashing_prevalence VALUES
('level1','GH_1_024',2009,'country','GH','Fixed facility observed',28.4,'Ashanti'),
('level1','GH_1_024',2009,'country','GH','Mobile object observed',46.9,'Ashanti'),
('level1','GH_1_024',2009,'country','GH','No handwashing facility observed in the dwelling, yard, or plot',24.2,'Ashanti'),
('level1','GH_1_024',2009,'country','GH','No permission to see/ Other',0.4,'Ashanti'),
('level1','GH_1_025',2009,'country','GH','Fixed facility observed',12.2,'Brong Ahafo'),
('level1','GH_1_025',2009,'country','GH','Mobile object observed',42.1,'Brong Ahafo'),
('level1','GH_1_025',2009,'country','GH','No handwashing facility observed in the dwelling, yard, or plot',45.1,'Brong Ahafo'),
('level1','GH_1_025',2009,'country','GH','No permission to see/ Other',0.5,'Brong Ahafo'),
('level1','GH_1_026',2009,'country','GH','Fixed facility observed',30.4,'Central'),
('level1','GH_1_026',2009,'country','GH','Mobile object observed',45.9,'Central'),
('level1','GH_1_026',2009,'country','GH','No handwashing facility observed in the dwelling, yard, or plot',23.7,'Central'),
('level1','GH_1_026',2009,'country','GH','No permission to see/ Other',0,'Central'),
('level1','GH_1_027',2009,'country','GH','Fixed facility observed',12.9,'Eastern'),
('level1','GH_1_027',2009,'country','GH','Mobile object observed',65.1,'Eastern'),
('level1','GH_1_027',2009,'country','GH','No handwashing facility observed in the dwelling, yard, or plot',21.9,'Eastern'),
('level1','GH_1_027',2009,'country','GH','No permission to see/ Other',0,'Eastern'),
('country','GH',2009,'continent','AFR','Fixed facility observed',23.9,'Ghana'),
('country','GH',2009,'continent','AFR','Mobile object observed',48.1,'Ghana'),
('country','GH',2009,'continent','AFR','No handwashing facility observed in the dwelling, yard, or plot',27.7,'Ghana'),
('country','GH',2009,'continent','AFR','No permission to see/ Other',0.3,'Ghana'),
('level1','GH_1_028',2009,'country','GH','Fixed facility observed',28.2,'Greater Accra'),
('level1','GH_1_028',2009,'country','GH','Mobile object observed',38.8,'Greater Accra'),
('level1','GH_1_028',2009,'country','GH','No handwashing facility observed in the dwelling, yard, or plot',32.6,'Greater Accra'),
('level1','GH_1_028',2009,'country','GH','No permission to see/ Other',0.4,'Greater Accra'),
('level1','GH_1_029',2009,'country','GH','Fixed facility observed',36.8,'Northern'),
('level1','GH_1_029',2009,'country','GH','Mobile object observed',43.3,'Northern'),
('level1','GH_1_029',2009,'country','GH','No handwashing facility observed in the dwelling, yard, or plot',19.5,'Northern'),
('level1','GH_1_029',2009,'country','GH','No permission to see/ Other',0.4,'Northern'),
('level1','GH_1_030',2009,'country','GH','Fixed facility observed',23.8,'Upper East'),
('level1','GH_1_030',2009,'country','GH','Mobile object observed',59.9,'Upper East'),
('level1','GH_1_030',2009,'country','GH','No handwashing facility observed in the dwelling, yard, or plot',15.9,'Upper East'),
('level1','GH_1_030',2009,'country','GH','No permission to see/ Other',0.4,'Upper East'),
('level1','GH_1_031',2009,'country','GH','Fixed facility observed',42.8,'Upper West'),
('level1','GH_1_031',2009,'country','GH','Mobile object observed',36.2,'Upper West'),
('level1','GH_1_031',2009,'country','GH','No handwashing facility observed in the dwelling, yard, or plot',20.3,'Upper West'),
('level1','GH_1_031',2009,'country','GH','No permission to see/ Other',0.6,'Upper West'),
('level1','GH_1_032',2009,'country','GH','Fixed facility observed',9.9,'Volta'),
('level1','GH_1_032',2009,'country','GH','Mobile object observed',44.1,'Volta'),
('level1','GH_1_032',2009,'country','GH','No handwashing facility observed in the dwelling, yard, or plot',45.7,'Volta'),
('level1','GH_1_032',2009,'country','GH','No permission to see/ Other',0.3,'Volta'),
('level1','GH_1_033',2009,'country','GH','Fixed facility observed',19.3,'Western'),
('level1','GH_1_033',2009,'country','GH','Mobile object observed',55.3,'Western'),
('level1','GH_1_033',2009,'country','GH','No handwashing facility observed in the dwelling, yard, or plot',25.2,'Western'),
('level1','GH_1_033',2009,'country','GH','No permission to see/ Other',0.2,'Western'),
('level1','NG_1_001',2009,'country','NG','Handwashing was mobile',46.3,'Abia'),
('level1','NG_1_001',2009,'country','NG','Handwashing was a fixed place',53.6,'Abia'),
('level1','NG_1_002',2009,'country','NG','Handwashing was mobile',34.7,'Adamawa'),
('level1','NG_1_002',2009,'country','NG','Handwashing was a fixed place',52.9,'Adamawa'),
('level1','NG_1_003',2009,'country','NG','Handwashing was a fixed place',9.3,'Akwa Ibom'),
('level1','NG_1_003',2009,'country','NG','Handwashing was mobile',24.4,'Akwa Ibom'),
('level1','NG_1_004',2009,'country','NG','Handwashing was a fixed place',11.4,'Anambra'),
('level1','NG_1_004',2009,'country','NG','Handwashing was mobile',88.6,'Anambra'),
('level1','NG_1_005',2009,'country','NG','Handwashing was mobile',36.7,'Bauchi'),
('level1','NG_1_005',2009,'country','NG','Handwashing was a fixed place',59.6,'Bauchi'),
('level1','NG_1_006',2009,'country','NG','Handwashing was a fixed place',4.5,'Bayelsa'),
('level1','NG_1_006',2009,'country','NG','Handwashing was mobile',94.7,'Bayelsa'),
('level1','NG_1_007',2009,'country','NG','Handwashing was mobile',98.8,'Benue'),
('level1','NG_1_007',2009,'country','NG','Handwashing was a fixed place',1.1,'Benue'),
('level1','NG_1_008',2009,'country','NG','Handwashing was mobile',29.1,'Borno'),
('level1','NG_1_008',2009,'country','NG','Handwashing was a fixed place',22.6,'Borno'),
('level1','NG_1_009',2009,'country','NG','Handwashing was a fixed place',63.6,'Cross River'),
('level1','NG_1_009',2009,'country','NG','Handwashing was mobile',35.4,'Cross River'),
('level1','NG_1_010',2009,'country','NG','Handwashing was mobile',38.9,'Delta'),
('level1','NG_1_010',2009,'country','NG','Handwashing was a fixed place',12.5,'Delta'),
('level1','NG_1_011',2009,'country','NG','Handwashing was mobile',55.5,'Ebonyi'),
('level1','NG_1_011',2009,'country','NG','Handwashing was a fixed place',4.3,'Ebonyi'),
('level1','NG_1_012',2009,'country','NG','Handwashing was mobile',66.6,'Edo'),
('level1','NG_1_012',2009,'country','NG','Handwashing was a fixed place',10.6,'Edo'),
('level1','NG_1_013',2009,'country','NG','Handwashing was a fixed place',18.3,'Ekiti'),
('level1','NG_1_013',2009,'country','NG','Handwashing was mobile',41.4,'Ekiti'),
('level1','NG_1_014',2009,'country','NG','Handwashing was mobile',88.9,'Enugu'),
('level1','NG_1_014',2009,'country','NG','Handwashing was a fixed place',10,'Enugu'),
('level1','NG_1_015',2009,'country','NG','Handwashing was mobile',65.6,'Federal Capital Territory'),
('level1','NG_1_015',2009,'country','NG','Handwashing was a fixed place',17.8,'Federal Capital Territory'),
('level1','NG_1_016',2009,'country','NG','Handwashing was a fixed place',0.9,'Gombe'),
('level1','NG_1_016',2009,'country','NG','Handwashing was mobile',53.2,'Gombe'),
('level1','NG_1_017',2009,'country','NG','Handwashing was a fixed place',17.2,'Imo'),
('level1','NG_1_017',2009,'country','NG','Handwashing was mobile',72.8,'Imo'),
('level1','NG_1_018',2009,'country','NG','Handwashing was a fixed place',43.1,'Jigawa'),
('level1','NG_1_018',2009,'country','NG','Handwashing was mobile',56.8,'Jigawa'),
('level1','NG_1_019',2009,'country','NG','Handwashing was a fixed place',17.5,'Kaduna'),
('level1','NG_1_019',2009,'country','NG','Handwashing was mobile',82.4,'Kaduna'),
('level1','NG_1_020',2009,'country','NG','Handwashing was a fixed place',21.5,'Kano'),
('level1','NG_1_020',2009,'country','NG','Handwashing was mobile',45.7,'Kano'),
('level1','NG_1_021',2009,'country','NG','Handwashing was a fixed place',86.5,'Katsina'),
('level1','NG_1_021',2009,'country','NG','Handwashing was mobile',11.7,'Katsina'),
('level1','NG_1_022',2009,'country','NG','Handwashing was mobile',52.7,'Kebbi'),
('level1','NG_1_022',2009,'country','NG','Handwashing was a fixed place',1.8,'Kebbi'),
('level1','NG_1_023',2009,'country','NG','Handwashing was a fixed place',4.6,'Kogi'),
('level1','NG_1_023',2009,'country','NG','Handwashing was mobile',65.4,'Kogi'),
('level1','NG_1_024',2009,'country','NG','Handwashing was a fixed place',2.9,'Kwara'),
('level1','NG_1_024',2009,'country','NG','Handwashing was mobile',90.9,'Kwara'),
('level1','NG_1_025',2009,'country','NG','Handwashing was a fixed place',35.9,'Lagos'),
('level1','NG_1_025',2009,'country','NG','Handwashing was mobile',61.2,'Lagos'),
('level1','NG_1_026',2009,'country','NG','Handwashing was a fixed place',46.1,'Nasarawa'),
('level1','NG_1_026',2009,'country','NG','Handwashing was mobile',53.8,'Nasarawa'),
('level1','NG_1_027',2009,'country','NG','Handwashing was a fixed place',0.9,'Niger'),
('level1','NG_1_027',2009,'country','NG','Handwashing was mobile',56.6,'Niger'),
('country','NG',2009,'continent','AFR','Handwashing was a fixed place',26.7,'Nigeria'),
('country','NG',2009,'continent','AFR','Handwashing was mobile',54.4,'Nigeria'),
('level1','ZA_1_006',2009,'country','ZA','Handwashing was mobile',49.9,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Handwashing was a fixed place',32.1,'North West'),
('level1','NG_1_028',2009,'country','NG','Handwashing was mobile',86.3,'Ogun'),
('level1','NG_1_028',2009,'country','NG','Handwashing was a fixed place',12.9,'Ogun'),
('level1','NG_1_029',2009,'country','NG','Handwashing was mobile',48.2,'Ondo'),
('level1','NG_1_029',2009,'country','NG','Handwashing was a fixed place',2.9,'Ondo'),
('level1','NG_1_030',2009,'country','NG','Handwashing was a fixed place',47.6,'Osun'),
('level1','NG_1_030',2009,'country','NG','Handwashing was mobile',50.9,'Osun'),
('level1','NG_1_031',2009,'country','NG','Handwashing was mobile',55.8,'Oyo'),
('level1','NG_1_031',2009,'country','NG','Handwashing was a fixed place',42.2,'Oyo'),
('level1','NG_1_032',2009,'country','NG','Handwashing was mobile',87.5,'Plateau'),
('level1','NG_1_032',2009,'country','NG','Handwashing was a fixed place',12.4,'Plateau'),
('level1','NG_1_033',2009,'country','NG','Handwashing was mobile',45,'Rivers'),
('level1','NG_1_033',2009,'country','NG','Handwashing was a fixed place',19.8,'Rivers'),
('level1','NG_1_034',2009,'country','NG','Handwashing was mobile',22.6,'Sokoto'),
('level1','NG_1_034',2009,'country','NG','Handwashing was a fixed place',2.7,'Sokoto'),
('level1','NG_1_035',2009,'country','NG','Handwashing was a fixed place',1.6,'Taraba'),
('level1','NG_1_035',2009,'country','NG','Handwashing was mobile',30.2,'Taraba'),
('level1','NG_1_036',2009,'country','NG','Handwashing was mobile',35.1,'Yobe'),
('level1','NG_1_036',2009,'country','NG','Handwashing was a fixed place',58.9,'Yobe'),
('level1','NG_1_037',2009,'country','NG','Handwashing was a fixed place',15.8,'Zamfara'),
('level1','NG_1_037',2009,'country','NG','Handwashing was mobile',83.4,'Zamfara'),
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
('level1','ZA_1_001',2009,'country','ZA','Handwashing was a fixed place',81,'Western Cape') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','GH','allHandwashingPrevalences','"Ghana Multiple Indicator Cluster Survey, 2018"','https://open.africa/dataset/ghana-multiple-indicator-cluster-survey/resource/5f88ae4a-7206-4651-8e5f-544d4cd0d7b5') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','GH','allHandwashingPrevalences','"Ghana Multiple Indicator Cluster Survey, 2018"','https://open.africa/dataset/ghana-multiple-indicator-cluster-survey/resource/5f88ae4a-7206-4651-8e5f-544d4cd0d7b5') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','NG','allHandwashingPrevalences','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/f24227a5-0f6f-4fae-84f6-53515a24f526') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','NG','allHandwashingPrevalences','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/f24227a5-0f6f-4fae-84f6-53515a24f526') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allHandwashingPrevalences','"Demographic and Health Survey, 2016"','https://open.africa/dataset/general-household-survey-2018/resource/f5e2b79d-36a6-4f0a-b0c5-84b75675ec00') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allHandwashingPrevalences','"Demographic and Health Survey, 2016"','https://open.africa/dataset/general-household-survey-2018/resource/f5e2b79d-36a6-4f0a-b0c5-84b75675ec00') ON CONFLICT DO NOTHING;
