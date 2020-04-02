SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.prevalence_of_diabetes DROP CONSTRAINT IF EXISTS pk_prevalence_of_diabetes;
DROP TABLE IF EXISTS public.prevalence_of_diabetes;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.prevalence_of_diabetes (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.prevalence_of_diabetes VALUES
('country','KE',2009,'continent','AFR',1.1,'Kenya'),
('level1','KE_1_001',2009,'country','KE',0.7,'Mombasa'),
('level1','KE_1_002',2009,'country','KE',0.7,'Kwale'),
('level1','KE_1_003',2009,'country','KE',1.3,'Kilifi'),
('level1','KE_1_004',2009,'country','KE',0,'Tana River'),
('level1','KE_1_005',2009,'country','KE',2.2,'Lamu'),
('level1','KE_1_006',2009,'country','KE',0.8,'Taita Taveta'),
('level1','KE_1_007',2009,'country','KE',1.9,'Garissa'),
('level1','KE_1_008',2009,'country','KE',2,'Wajir'),
('level1','KE_1_009',2009,'country','KE',0.4,'Mandera'),
('level1','KE_1_010',2009,'country','KE',0.7,'Marsabit'),
('level1','KE_1_011',2009,'country','KE',0.9,'Isiolo'),
('level1','KE_1_012',2009,'country','KE',0.6,'Meru'),
('level1','KE_1_013',2009,'country','KE',0.5,'Tharaka-Nithi'),
('level1','KE_1_014',2009,'country','KE',1.7,'Embu'),
('level1','KE_1_015',2009,'country','KE',1.2,'Kitui'),
('level1','KE_1_016',2009,'country','KE',2.1,'Machakos'),
('level1','KE_1_017',2009,'country','KE',1.2,'Makueni'),
('level1','KE_1_018',2009,'country','KE',2.8,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE',3.3,'Nyeri'),
('level1','KE_1_020',2009,'country','KE',0.6,'Kirinyaga'),
('level1','KE_1_021',2009,'country','KE',1.6,'Murang''a'),
('level1','KE_1_022',2009,'country','KE',3,'Kiambu'),
('level1','KE_1_023',2009,'country','KE',0,'Turkana'),
('level1','KE_1_024',2009,'country','KE',0.4,'West Pokot'),
('level1','KE_1_025',2009,'country','KE',0.8,'Samburu'),
('level1','KE_1_027',2009,'country','KE',1.3,'Uasin Gishu'),
('level1','KE_1_029',2009,'country','KE',1.1,'Nandi'),
('level1','KE_1_030',2009,'country','KE',0.2,'Baringo'),
('level1','KE_1_031',2009,'country','KE',3.3,'Laikipia'),
('level1','KE_1_032',2009,'country','KE',1.7,'Nakuru'),
('level1','KE_1_033',2009,'country','KE',0.3,'Narok'),
('level1','KE_1_034',2009,'country','KE',1,'Kajiado'),
('level1','KE_1_035',2009,'country','KE',0.8,'Kericho'),
('level1','KE_1_036',2009,'country','KE',0.5,'Bomet'),
('level1','KE_1_037',2009,'country','KE',0.4,'Kakamega'),
('level1','KE_1_038',2009,'country','KE',0.5,'Vihiga'),
('level1','KE_1_039',2009,'country','KE',0.3,'Bungoma'),
('level1','KE_1_040',2009,'country','KE',1.2,'Busia'),
('level1','KE_1_041',2009,'country','KE',0.7,'Siaya'),
('level1','KE_1_042',2009,'country','KE',0.2,'Kisumu'),
('level1','KE_1_043',2009,'country','KE',0.5,'Homa Bay'),
('level1','KE_1_044',2009,'country','KE',0.2,'Migori'),
('level1','KE_1_045',2009,'country','KE',2,'Kisii'),
('level1','KE_1_046',2009,'country','KE',1.3,'Nyamira');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','KE','allPrevalenceOfDiabetes','"Kenya Integrated Household Budget Survey, 2016"','https://open.africa/dataset/kenya-integrated-household-budget-survey-2016/resource/d5ed58b9-ce88-4e88-9e14-847ac8a77f08') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','KE','allPrevalenceOfDiabetes','"Kenya Integrated Household Budget Survey, 2016"','https://open.africa/dataset/kenya-integrated-household-budget-survey-2016/resource/d5ed58b9-ce88-4e88-9e14-847ac8a77f08') on conflict do nothing;
