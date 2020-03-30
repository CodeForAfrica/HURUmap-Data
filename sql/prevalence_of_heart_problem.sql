SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.prevalence_of_heart_problem DROP CONSTRAINT IF EXISTS pk_prevalence_of_heart_problem;
DROP TABLE IF EXISTS public.prevalence_of_heart_problem;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.prevalence_of_heart_problem (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.prevalence_of_heart_problem VALUES
('country','KE',2009,'continent','AFR',0.3,'Kenya'),
('level1','KE_1_001',2009,'country','KE',1.3,'Mombasa'),
('level1','KE_1_002',2009,'country','KE',0.1,'Kwale'),
('level1','KE_1_003',2009,'country','KE',0.3,'Kilifi'),
('level1','KE_1_004',2009,'country','KE',0.8,'Tana River'),
('level1','KE_1_005',2009,'country','KE',0,'Lamu'),
('level1','KE_1_007',2009,'country','KE',0,'Garissa'),
('level1','KE_1_008',2009,'country','KE',5,'Wajir'),
('level1','KE_1_009',2009,'country','KE',0.3,'Mandera'),
('level1','KE_1_010',2009,'country','KE',1.5,'Marsabit'),
('level1','KE_1_011',2009,'country','KE',0.6,'Isiolo'),
('level1','KE_1_012',2009,'country','KE',0.8,'Meru'),
('level1','KE_1_013',2009,'country','KE',0.4,'Tharaka-Nithi'),
('level1','KE_1_014',2009,'country','KE',0.1,'Embu'),
('level1','KE_1_015',2009,'country','KE',3,'Kitui'),
('level1','KE_1_016',2009,'country','KE',1.1,'Machakos'),
('level1','KE_1_017',2009,'country','KE',0,'Makueni'),
('level1','KE_1_018',2009,'country','KE',0,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE',0.5,'Nyeri'),
('level1','KE_1_020',2009,'country','KE',0.3,'Kirinyaga'),
('level1','KE_1_021',2009,'country','KE',0,'Murang''a'),
('level1','KE_1_022',2009,'country','KE',0,'Kiambu'),
('level1','KE_1_023',2009,'country','KE',0,'Turkana'),
('level1','KE_1_024',2009,'country','KE',0.6,'West Pokot'),
('level1','KE_1_025',2009,'country','KE',0.4,'Samburu'),
('level1','KE_1_027',2009,'country','KE',0.5,'Uasin Gishu'),
('level1','KE_1_029',2009,'country','KE',0,'Nandi'),
('level1','KE_1_030',2009,'country','KE',0.3,'Baringo'),
('level1','KE_1_031',2009,'country','KE',0,'Laikipia'),
('level1','KE_1_032',2009,'country','KE',0.2,'Nakuru'),
('level1','KE_1_033',2009,'country','KE',0,'Narok'),
('level1','KE_1_034',2009,'country','KE',0,'Kajiado'),
('level1','KE_1_035',2009,'country','KE',0.3,'Kericho'),
('level1','KE_1_036',2009,'country','KE',0.6,'Bomet'),
('level1','KE_1_037',2009,'country','KE',0.1,'Kakamega'),
('level1','KE_1_038',2009,'country','KE',0,'Vihiga'),
('level1','KE_1_039',2009,'country','KE',0.5,'Bungoma'),
('level1','KE_1_040',2009,'country','KE',0.4,'Busia'),
('level1','KE_1_041',2009,'country','KE',0.6,'Siaya'),
('level1','KE_1_042',2009,'country','KE',0,'Kisumu'),
('level1','KE_1_043',2009,'country','KE',0.1,'Homa Bay'),
('level1','KE_1_044',2009,'country','KE',0.2,'Migori'),
('level1','KE_1_045',2009,'country','KE',0,'Kisii'),
('level1','KE_1_046',2009,'country','KE',0.5,'Nyamira');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','KE','allPrevalenceOfHeartProblems','"Kenya Integrated Household Budget Survey, 2016"','https://open.africa/dataset/kenya-integrated-household-budget-survey-2016/resource/44da62a0-cf7b-40c7-ba07-05035b794fb3') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','KE','allPrevalenceOfHeartProblems','"Kenya Integrated Household Budget Survey, 2016"','https://open.africa/dataset/kenya-integrated-household-budget-survey-2016/resource/44da62a0-cf7b-40c7-ba07-05035b794fb3') on conflict do nothing;
