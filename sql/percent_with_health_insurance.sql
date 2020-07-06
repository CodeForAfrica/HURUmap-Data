SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.percent_with_health_insurance DROP CONSTRAINT IF EXISTS pk_percent_with_health_insurance;
DROP TABLE IF EXISTS public.percent_with_health_insurance;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.percent_with_health_insurance (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.percent_with_health_insurance ADD CONSTRAINT pk_percent_with_health_insurance PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.percent_with_health_insurance VALUES
('country','KE',2009,'continent','AFR','With',19,'Kenya'),
('level1','KE_1_001',2009,'country','KE','With',18.1,'Mombasa'),
('level1','KE_1_002',2009,'country','KE','With',9.2,'Kwale'),
('level1','KE_1_003',2009,'country','KE','With',17.8,'Kilifi'),
('level1','KE_1_004',2009,'country','KE','With',3.1,'Tana River'),
('level1','KE_1_005',2009,'country','KE','With',7.9,'Lamu'),
('level1','KE_1_007',2009,'country','KE','With',2.7,'Garissa'),
('level1','KE_1_008',2009,'country','KE','With',0.2,'Wajir'),
('level1','KE_1_009',2009,'country','KE','With',1.3,'Mandera'),
('level1','KE_1_010',2009,'country','KE','With',1.7,'Marsabit'),
('level1','KE_1_011',2009,'country','KE','With',7.7,'Isiolo'),
('level1','KE_1_012',2009,'country','KE','With',17.4,'Meru'),
('level1','KE_1_013',2009,'country','KE','With',15.7,'Tharaka-Nithi'),
('level1','KE_1_014',2009,'country','KE','With',32.7,'Embu'),
('level1','KE_1_015',2009,'country','KE','With',8.6,'Kitui'),
('level1','KE_1_016',2009,'country','KE','With',18.5,'Machakos'),
('level1','KE_1_017',2009,'country','KE','With',13.5,'Makueni'),
('level1','KE_1_018',2009,'country','KE','With',18,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE','With',32.2,'Nyeri'),
('level1','KE_1_020',2009,'country','KE','With',29.1,'Kirinyaga'),
('level1','KE_1_021',2009,'country','KE','With',23.1,'Murang''a'),
('level1','KE_1_022',2009,'country','KE','With',25.6,'Kiambu'),
('level1','KE_1_023',2009,'country','KE','With',5,'Turkana'),
('level1','KE_1_024',2009,'country','KE','With',2.9,'West Pokot'),
('level1','KE_1_025',2009,'country','KE','With',6.4,'Samburu'),
('level1','KE_1_026',2009,'country','KE','With',10.9,'Trans-Nzoia'),
('level1','KE_1_027',2009,'country','KE','With',25.2,'Uasin Gishu'),
('level1','KE_1_029',2009,'country','KE','With',18.6,'Nandi'),
('level1','KE_1_030',2009,'country','KE','With',20.4,'Baringo'),
('level1','KE_1_031',2009,'country','KE','With',21.5,'Laikipia'),
('level1','KE_1_032',2009,'country','KE','With',22.8,'Nakuru'),
('level1','KE_1_033',2009,'country','KE','With',9.2,'Narok'),
('level1','KE_1_034',2009,'country','KE','With',28.4,'Kajiado'),
('level1','KE_1_035',2009,'country','KE','With',23.9,'Kericho'),
('level1','KE_1_036',2009,'country','KE','With',25.5,'Bomet'),
('level1','KE_1_037',2009,'country','KE','With',14.8,'Kakamega'),
('level1','KE_1_038',2009,'country','KE','With',14.3,'Vihiga'),
('level1','KE_1_039',2009,'country','KE','With',6.5,'Bungoma'),
('level1','KE_1_040',2009,'country','KE','With',6.1,'Busia'),
('level1','KE_1_041',2009,'country','KE','With',7.6,'Siaya'),
('level1','KE_1_042',2009,'country','KE','With',27.1,'Kisumu'),
('level1','KE_1_043',2009,'country','KE','With',11.3,'Homa Bay'),
('level1','KE_1_044',2009,'country','KE','With',13.7,'Migori'),
('level1','KE_1_045',2009,'country','KE','With',22.1,'Kisii'),
('level1','KE_1_046',2009,'country','KE','With',20.1,'Nyamira'),
('level1','KE_1_047',2009,'country','KE','With',40.7,'Nairobi'),
('country','KE',2009,'continent','AFR','Without',81,'Kenya'),
('level1','KE_1_001',2009,'country','KE','Without',81.9,'Mombasa'),
('level1','KE_1_002',2009,'country','KE','Without',90.8,'Kwale'),
('level1','KE_1_003',2009,'country','KE','Without',82.2,'Kilifi'),
('level1','KE_1_004',2009,'country','KE','Without',96.9,'Tana River'),
('level1','KE_1_005',2009,'country','KE','Without',92.1,'Lamu'),
('level1','KE_1_007',2009,'country','KE','Without',97.3,'Garissa'),
('level1','KE_1_008',2009,'country','KE','Without',99.8,'Wajir'),
('level1','KE_1_009',2009,'country','KE','Without',98.7,'Mandera'),
('level1','KE_1_010',2009,'country','KE','Without',98.3,'Marsabit'),
('level1','KE_1_011',2009,'country','KE','Without',92.3,'Isiolo'),
('level1','KE_1_012',2009,'country','KE','Without',82.6,'Meru'),
('level1','KE_1_013',2009,'country','KE','Without',84.3,'Tharaka-Nithi'),
('level1','KE_1_014',2009,'country','KE','Without',67.3,'Embu'),
('level1','KE_1_015',2009,'country','KE','Without',91.4,'Kitui'),
('level1','KE_1_016',2009,'country','KE','Without',81.5,'Machakos'),
('level1','KE_1_017',2009,'country','KE','Without',86.5,'Makueni'),
('level1','KE_1_018',2009,'country','KE','Without',82,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE','Without',67.8,'Nyeri'),
('level1','KE_1_020',2009,'country','KE','Without',70.9,'Kirinyaga'),
('level1','KE_1_021',2009,'country','KE','Without',76.9,'Murang''a'),
('level1','KE_1_022',2009,'country','KE','Without',74.4,'Kiambu'),
('level1','KE_1_023',2009,'country','KE','Without',95,'Turkana'),
('level1','KE_1_024',2009,'country','KE','Without',97.1,'West Pokot'),
('level1','KE_1_025',2009,'country','KE','Without',93.6,'Samburu'),
('level1','KE_1_026',2009,'country','KE','Without',89.1,'Trans-Nzoia'),
('level1','KE_1_027',2009,'country','KE','Without',74.8,'Uasin Gishu'),
('level1','KE_1_029',2009,'country','KE','Without',81.4,'Nandi'),
('level1','KE_1_030',2009,'country','KE','Without',79.6,'Baringo'),
('level1','KE_1_031',2009,'country','KE','Without',78.5,'Laikipia'),
('level1','KE_1_032',2009,'country','KE','Without',77.2,'Nakuru'),
('level1','KE_1_033',2009,'country','KE','Without',90.8,'Narok'),
('level1','KE_1_034',2009,'country','KE','Without',71.6,'Kajiado'),
('level1','KE_1_035',2009,'country','KE','Without',76.1,'Kericho'),
('level1','KE_1_036',2009,'country','KE','Without',74.5,'Bomet'),
('level1','KE_1_037',2009,'country','KE','Without',85.2,'Kakamega'),
('level1','KE_1_038',2009,'country','KE','Without',85.7,'Vihiga'),
('level1','KE_1_039',2009,'country','KE','Without',93.5,'Bungoma'),
('level1','KE_1_040',2009,'country','KE','Without',93.9,'Busia'),
('level1','KE_1_041',2009,'country','KE','Without',92.4,'Siaya'),
('level1','KE_1_042',2009,'country','KE','Without',72.9,'Kisumu'),
('level1','KE_1_043',2009,'country','KE','Without',88.7,'Homa Bay'),
('level1','KE_1_044',2009,'country','KE','Without',86.3,'Migori'),
('level1','KE_1_045',2009,'country','KE','Without',77.9,'Kisii'),
('level1','KE_1_046',2009,'country','KE','Without',79.9,'Nyamira'),
('level1','KE_1_047',2009,'country','KE','Without',59.3,'Nairobi') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','KE','allPercentWithHealthInsurances','"Kenya Integrated Household Budget Survey, 2016"','https://open.africa/dataset/kenya-integrated-household-budget-survey-2016/resource/8eac92bf-5ff8-465e-8d3c-6a30e0ff7403') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','KE','allPercentWithHealthInsurances','"Kenya Integrated Household Budget Survey, 2016"','https://open.africa/dataset/kenya-integrated-household-budget-survey-2016/resource/8eac92bf-5ff8-465e-8d3c-6a30e0ff7403') ON CONFLICT DO NOTHING;
