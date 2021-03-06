SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.prevalence_of_handwashing_near_the_toilet DROP CONSTRAINT IF EXISTS pk_prevalence_of_handwashing_near_the_toilet;
DROP TABLE IF EXISTS public.prevalence_of_handwashing_near_the_toilet;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.prevalence_of_handwashing_near_the_toilet (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.prevalence_of_handwashing_near_the_toilet ADD CONSTRAINT pk_prevalence_of_handwashing_near_the_toilet PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.prevalence_of_handwashing_near_the_toilet VALUES
('country','KE',2009,'continent','AFR','Place to wash hands',21.2,'Kenya'),
('country','KE',2009,'continent','AFR','Not stated',0.4,'Kenya'),
('country','KE',2009,'continent','AFR','No place to wash hands',78.4,'Kenya'),
('level1','KE_1_001',2009,'country','KE','Not stated',0.2,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Place to wash hands',18.6,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','No place to wash hands',81.2,'Mombasa'),
('level1','KE_1_002',2009,'country','KE','No place to wash hands',87.2,'Kwale'),
('level1','KE_1_002',2009,'country','KE','Place to wash hands',12.8,'Kwale'),
('level1','KE_1_002',2009,'country','KE','Not stated',0,'Kwale'),
('level1','KE_1_003',2009,'country','KE','Place to wash hands',17.2,'Kilifi'),
('level1','KE_1_003',2009,'country','KE','Not stated',1.8,'Kilifi'),
('level1','KE_1_003',2009,'country','KE','No place to wash hands',81,'Kilifi'),
('level1','KE_1_004',2009,'country','KE','No place to wash hands',82.2,'Tana River'),
('level1','KE_1_004',2009,'country','KE','Place to wash hands',17.7,'Tana River'),
('level1','KE_1_004',2009,'country','KE','Not stated',0.1,'Tana River'),
('level1','KE_1_005',2009,'country','KE','No place to wash hands',78.2,'Lamu'),
('level1','KE_1_005',2009,'country','KE','Not stated',0,'Lamu'),
('level1','KE_1_005',2009,'country','KE','Place to wash hands',21.8,'Lamu'),
('level1','KE_1_006',2009,'country','KE','Not stated',0,'Taita Taveta'),
('level1','KE_1_006',2009,'country','KE','Place to wash hands',37.6,'Taita Taveta'),
('level1','KE_1_006',2009,'country','KE','No place to wash hands',62.4,'Taita Taveta'),
('level1','KE_1_007',2009,'country','KE','Not stated',1.3,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Place to wash hands',6.3,'Garissa'),
('level1','KE_1_007',2009,'country','KE','No place to wash hands',92.4,'Garissa'),
('level1','KE_1_008',2009,'country','KE','Not stated',0.4,'Wajir'),
('level1','KE_1_008',2009,'country','KE','Place to wash hands',3.1,'Wajir'),
('level1','KE_1_008',2009,'country','KE','No place to wash hands',96.5,'Wajir'),
('level1','KE_1_009',2009,'country','KE','Place to wash hands',14.3,'Mandera'),
('level1','KE_1_009',2009,'country','KE','No place to wash hands',85.7,'Mandera'),
('level1','KE_1_009',2009,'country','KE','Not stated',0,'Mandera'),
('level1','KE_1_010',2009,'country','KE','Not stated',0,'Marsabit'),
('level1','KE_1_010',2009,'country','KE','No place to wash hands',85.4,'Marsabit'),
('level1','KE_1_010',2009,'country','KE','Place to wash hands',14.6,'Marsabit'),
('level1','KE_1_011',2009,'country','KE','No place to wash hands',52.1,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Place to wash hands',47.9,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Not stated',0,'Isiolo'),
('level1','KE_1_012',2009,'country','KE','Place to wash hands',35,'Meru'),
('level1','KE_1_012',2009,'country','KE','Not stated',0,'Meru'),
('level1','KE_1_012',2009,'country','KE','No place to wash hands',65,'Meru'),
('level1','KE_1_013',2009,'country','KE','No place to wash hands',86,'Tharaka-Nithi'),
('level1','KE_1_013',2009,'country','KE','Place to wash hands',13.8,'Tharaka-Nithi'),
('level1','KE_1_013',2009,'country','KE','Not stated',0.2,'Tharaka-Nithi'),
('level1','KE_1_014',2009,'country','KE','Place to wash hands',15.4,'Embu'),
('level1','KE_1_014',2009,'country','KE','Not stated',0.2,'Embu'),
('level1','KE_1_014',2009,'country','KE','No place to wash hands',84.4,'Embu'),
('level1','KE_1_015',2009,'country','KE','Not stated',0.2,'Kitui'),
('level1','KE_1_015',2009,'country','KE','No place to wash hands',88.6,'Kitui'),
('level1','KE_1_015',2009,'country','KE','Place to wash hands',11.1,'Kitui'),
('level1','KE_1_016',2009,'country','KE','No place to wash hands',83.1,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Place to wash hands',16.2,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Not stated',0.7,'Machakos'),
('level1','KE_1_017',2009,'country','KE','Place to wash hands',4.6,'Makueni'),
('level1','KE_1_017',2009,'country','KE','No place to wash hands',95.2,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Not stated',0.2,'Makueni'),
('level1','KE_1_018',2009,'country','KE','Place to wash hands',12.1,'Nyandarua'),
('level1','KE_1_018',2009,'country','KE','No place to wash hands',87.9,'Nyandarua'),
('level1','KE_1_018',2009,'country','KE','Not stated',0,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE','Place to wash hands',20.1,'Nyeri'),
('level1','KE_1_019',2009,'country','KE','No place to wash hands',79.9,'Nyeri'),
('level1','KE_1_019',2009,'country','KE','Not stated',0,'Nyeri'),
('level1','KE_1_020',2009,'country','KE','Place to wash hands',20.6,'Kirinyaga'),
('level1','KE_1_020',2009,'country','KE','No place to wash hands',79.4,'Kirinyaga'),
('level1','KE_1_020',2009,'country','KE','Not stated',0,'Kirinyaga'),
('level1','KE_1_021',2009,'country','KE','Place to wash hands',8.8,'Murang''a'),
('level1','KE_1_021',2009,'country','KE','No place to wash hands',91.2,'Murang''a'),
('level1','KE_1_021',2009,'country','KE','Not stated',0,'Murang''a'),
('level1','KE_1_022',2009,'country','KE','Not stated',0,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Place to wash hands',41.1,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','No place to wash hands',58.9,'Kiambu'),
('level1','KE_1_023',2009,'country','KE','Not stated',0,'Turkana'),
('level1','KE_1_023',2009,'country','KE','Place to wash hands',18.7,'Turkana'),
('level1','KE_1_023',2009,'country','KE','No place to wash hands',81.3,'Turkana'),
('level1','KE_1_024',2009,'country','KE','No place to wash hands',94,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Place to wash hands',3.4,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Not stated',2.6,'West Pokot'),
('level1','KE_1_025',2009,'country','KE','Place to wash hands',6.8,'Samburu'),
('level1','KE_1_025',2009,'country','KE','No place to wash hands',93.2,'Samburu'),
('level1','KE_1_025',2009,'country','KE','Not stated',0,'Samburu'),
('level1','KE_1_027',2009,'country','KE','Not stated',0.2,'Uasin Gishu'),
('level1','KE_1_027',2009,'country','KE','Place to wash hands',14.3,'Uasin Gishu'),
('level1','KE_1_027',2009,'country','KE','No place to wash hands',85.6,'Uasin Gishu'),
('level1','KE_1_029',2009,'country','KE','No place to wash hands',89.4,'Nandi'),
('level1','KE_1_029',2009,'country','KE','Place to wash hands',10.6,'Nandi'),
('level1','KE_1_029',2009,'country','KE','Not stated',0,'Nandi'),
('level1','KE_1_030',2009,'country','KE','No place to wash hands',92.6,'Baringo'),
('level1','KE_1_030',2009,'country','KE','Not stated',0.2,'Baringo'),
('level1','KE_1_030',2009,'country','KE','Place to wash hands',7.2,'Baringo'),
('level1','KE_1_031',2009,'country','KE','No place to wash hands',76.6,'Laikipia'),
('level1','KE_1_031',2009,'country','KE','Not stated',0.2,'Laikipia'),
('level1','KE_1_031',2009,'country','KE','Place to wash hands',23.2,'Laikipia'),
('level1','KE_1_032',2009,'country','KE','No place to wash hands',81,'Nakuru'),
('level1','KE_1_032',2009,'country','KE','Not stated',0.4,'Nakuru'),
('level1','KE_1_032',2009,'country','KE','Place to wash hands',18.6,'Nakuru'),
('level1','KE_1_033',2009,'country','KE','Place to wash hands',7.5,'Narok'),
('level1','KE_1_033',2009,'country','KE','No place to wash hands',91.1,'Narok'),
('level1','KE_1_033',2009,'country','KE','Not stated',1.4,'Narok'),
('level1','KE_1_034',2009,'country','KE','Not stated',1,'Kajiado'),
('level1','KE_1_034',2009,'country','KE','No place to wash hands',68.2,'Kajiado'),
('level1','KE_1_034',2009,'country','KE','Place to wash hands',30.8,'Kajiado'),
('level1','KE_1_035',2009,'country','KE','Place to wash hands',15.8,'Kericho'),
('level1','KE_1_035',2009,'country','KE','No place to wash hands',84.2,'Kericho'),
('level1','KE_1_035',2009,'country','KE','Not stated',0,'Kericho'),
('level1','KE_1_036',2009,'country','KE','No place to wash hands',91.3,'Bomet'),
('level1','KE_1_036',2009,'country','KE','Not stated',0.4,'Bomet'),
('level1','KE_1_036',2009,'country','KE','Place to wash hands',8.4,'Bomet'),
('level1','KE_1_037',2009,'country','KE','Place to wash hands',8.1,'Kakamega'),
('level1','KE_1_037',2009,'country','KE','No place to wash hands',91.2,'Kakamega'),
('level1','KE_1_037',2009,'country','KE','Not stated',0.7,'Kakamega'),
('level1','KE_1_038',2009,'country','KE','No place to wash hands',84.3,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Place to wash hands',15.7,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Not stated',0,'Vihiga'),
('level1','KE_1_039',2009,'country','KE','Not stated',1.5,'Bungoma'),
('level1','KE_1_039',2009,'country','KE','No place to wash hands',77.3,'Bungoma'),
('level1','KE_1_039',2009,'country','KE','Place to wash hands',21.2,'Bungoma'),
('level1','KE_1_040',2009,'country','KE','Not stated',0,'Busia'),
('level1','KE_1_040',2009,'country','KE','No place to wash hands',76.5,'Busia'),
('level1','KE_1_040',2009,'country','KE','Place to wash hands',23.5,'Busia'),
('level1','KE_1_041',2009,'country','KE','Not stated',0.3,'Siaya'),
('level1','KE_1_041',2009,'country','KE','No place to wash hands',76.9,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Place to wash hands',22.8,'Siaya'),
('level1','KE_1_042',2009,'country','KE','No place to wash hands',81.1,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Not stated',0,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Place to wash hands',18.9,'Kisumu'),
('level1','KE_1_043',2009,'country','KE','Not stated',0.5,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','No place to wash hands',82,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Place to wash hands',17.5,'Homa Bay'),
('level1','KE_1_044',2009,'country','KE','Not stated',0,'Migori'),
('level1','KE_1_044',2009,'country','KE','No place to wash hands',94.8,'Migori'),
('level1','KE_1_044',2009,'country','KE','Place to wash hands',5.2,'Migori'),
('level1','KE_1_045',2009,'country','KE','Not stated',0.3,'Kisii'),
('level1','KE_1_045',2009,'country','KE','No place to wash hands',97,'Kisii'),
('level1','KE_1_045',2009,'country','KE','Place to wash hands',2.7,'Kisii'),
('level1','KE_1_046',2009,'country','KE','Not stated',0.2,'Nyamira'),
('level1','KE_1_046',2009,'country','KE','Place to wash hands',5,'Nyamira'),
('level1','KE_1_046',2009,'country','KE','No place to wash hands',94.8,'Nyamira') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','KE','allPrevalenceOfHandwashingNearTheToilets','"Kenya Integrated Household Budget Survey, 2016"','https://open.africa/dataset/kenya-integrated-household-budget-survey-2016/resource/4cf6156d-515b-4d4f-8fdf-3f2dd301ae88') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','KE','allPrevalenceOfHandwashingNearTheToilets','"Kenya Integrated Household Budget Survey, 2016"','https://open.africa/dataset/kenya-integrated-household-budget-survey-2016/resource/4cf6156d-515b-4d4f-8fdf-3f2dd301ae88') ON CONFLICT DO NOTHING;
