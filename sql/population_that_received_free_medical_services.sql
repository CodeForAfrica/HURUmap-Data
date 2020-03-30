SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.population_that_received_free_medical_services DROP CONSTRAINT IF EXISTS pk_population_that_received_free_medical_services;
DROP TABLE IF EXISTS public.population_that_received_free_medical_services;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.population_that_received_free_medical_services (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.population_that_received_free_medical_services VALUES
('level1','KE_1_030',2009,'country','KE','Tuberculosis Treatment',0,'Baringo'),
('level1','KE_1_030',2009,'country','KE','HIV/AIDS',0,'Baringo'),
('level1','KE_1_030',2009,'country','KE','Malaria',6.3,'Baringo'),
('level1','KE_1_030',2009,'country','KE','Not Stated',0,'Baringo'),
('level1','KE_1_030',2009,'country','KE','Maternal & Child Health Care (MCH)',71.2,'Baringo'),
('level1','KE_1_030',2009,'country','KE','Other',18.7,'Baringo'),
('level1','KE_1_030',2009,'country','KE','Nutrition Feeding',3.9,'Baringo'),
('level1','KE_1_036',2009,'country','KE','Other',21.9,'Bomet'),
('level1','KE_1_036',2009,'country','KE','Not Stated',0,'Bomet'),
('level1','KE_1_036',2009,'country','KE','Maternal & Child Health Care (MCH)',5.1,'Bomet'),
('level1','KE_1_036',2009,'country','KE','Tuberculosis Treatment',0.6,'Bomet'),
('level1','KE_1_036',2009,'country','KE','Nutrition Feeding',0.3,'Bomet'),
('level1','KE_1_036',2009,'country','KE','HIV/AIDS',1.2,'Bomet'),
('level1','KE_1_036',2009,'country','KE','Malaria',71,'Bomet'),
('level1','KE_1_039',2009,'country','KE','Nutrition Feeding',0,'Bungoma'),
('level1','KE_1_039',2009,'country','KE','Malaria',3.3,'Bungoma'),
('level1','KE_1_039',2009,'country','KE','Tuberculosis Treatment',0.2,'Bungoma'),
('level1','KE_1_039',2009,'country','KE','Maternal & Child Health Care (MCH)',24.8,'Bungoma'),
('level1','KE_1_039',2009,'country','KE','Other',61.8,'Bungoma'),
('level1','KE_1_039',2009,'country','KE','HIV/AIDS',9.9,'Bungoma'),
('level1','KE_1_039',2009,'country','KE','Not Stated',0,'Bungoma'),
('level1','KE_1_040',2009,'country','KE','HIV/AIDS',5.1,'Busia'),
('level1','KE_1_040',2009,'country','KE','Maternal & Child Health Care (MCH)',28.4,'Busia'),
('level1','KE_1_040',2009,'country','KE','Malaria',23.9,'Busia'),
('level1','KE_1_040',2009,'country','KE','Nutrition Feeding',0,'Busia'),
('level1','KE_1_040',2009,'country','KE','Other',42.4,'Busia'),
('level1','KE_1_040',2009,'country','KE','Not Stated',0,'Busia'),
('level1','KE_1_040',2009,'country','KE','Tuberculosis Treatment',0.3,'Busia'),
('level1','KE_1_014',2009,'country','KE','Maternal & Child Health Care (MCH)',43,'Embu'),
('level1','KE_1_014',2009,'country','KE','Not Stated',0,'Embu'),
('level1','KE_1_014',2009,'country','KE','Other',26.8,'Embu'),
('level1','KE_1_014',2009,'country','KE','Tuberculosis Treatment',0,'Embu'),
('level1','KE_1_014',2009,'country','KE','HIV/AIDS',4,'Embu'),
('level1','KE_1_014',2009,'country','KE','Malaria',24.1,'Embu'),
('level1','KE_1_014',2009,'country','KE','Nutrition Feeding',2.1,'Embu'),
('level1','KE_1_007',2009,'country','KE','HIV/AIDS',0,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Other',27.1,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Malaria',39.8,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Not Stated',0,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Tuberculosis Treatment',0,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Maternal & Child Health Care (MCH)',26.6,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Nutrition Feeding',6.4,'Garissa'),
('level1','KE_1_043',2009,'country','KE','Nutrition Feeding',1,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Maternal & Child Health Care (MCH)',6.7,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Tuberculosis Treatment',0.1,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Other',65.7,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Malaria',25.8,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Not Stated',0,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','HIV/AIDS',0.7,'Homa Bay'),
('level1','KE_1_011',2009,'country','KE','Nutrition Feeding',0.2,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','HIV/AIDS',0.6,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Other',75.7,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Tuberculosis Treatment',0.2,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Malaria',11.2,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Maternal & Child Health Care (MCH)',12.1,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Not Stated',0,'Isiolo'),
('level1','KE_1_034',2009,'country','KE','Not Stated',0,'Kajiado'),
('level1','KE_1_034',2009,'country','KE','Other',15.5,'Kajiado'),
('level1','KE_1_034',2009,'country','KE','Maternal & Child Health Care (MCH)',50.2,'Kajiado'),
('level1','KE_1_034',2009,'country','KE','HIV/AIDS',9.7,'Kajiado'),
('level1','KE_1_034',2009,'country','KE','Malaria',24.6,'Kajiado'),
('level1','KE_1_034',2009,'country','KE','Tuberculosis Treatment',0,'Kajiado'),
('level1','KE_1_034',2009,'country','KE','Nutrition Feeding',0,'Kajiado'),
('level1','KE_1_037',2009,'country','KE','Nutrition Feeding',0.5,'Kakamega'),
('level1','KE_1_037',2009,'country','KE','Malaria',25.2,'Kakamega'),
('level1','KE_1_037',2009,'country','KE','Tuberculosis Treatment',0,'Kakamega'),
('level1','KE_1_037',2009,'country','KE','Other',31.3,'Kakamega'),
('level1','KE_1_037',2009,'country','KE','Not Stated',0.2,'Kakamega'),
('level1','KE_1_037',2009,'country','KE','HIV/AIDS',8.5,'Kakamega'),
('level1','KE_1_037',2009,'country','KE','Maternal & Child Health Care (MCH)',34.3,'Kakamega'),
('level1','KE_1_035',2009,'country','KE','Nutrition Feeding',0.6,'Kericho'),
('level1','KE_1_035',2009,'country','KE','Tuberculosis Treatment',0,'Kericho'),
('level1','KE_1_035',2009,'country','KE','Not Stated',0,'Kericho'),
('level1','KE_1_035',2009,'country','KE','Other',76.6,'Kericho'),
('level1','KE_1_035',2009,'country','KE','Malaria',4.7,'Kericho'),
('level1','KE_1_035',2009,'country','KE','Maternal & Child Health Care (MCH)',17.4,'Kericho'),
('level1','KE_1_035',2009,'country','KE','HIV/AIDS',0.6,'Kericho'),
('level1','KE_1_022',2009,'country','KE','Nutrition Feeding',0,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Tuberculosis Treatment',0,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','HIV/AIDS',0,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Other',54.2,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Malaria',6.1,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Not Stated',0,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Maternal & Child Health Care (MCH)',39.7,'Kiambu'),
('level1','KE_1_003',2009,'country','KE','Other',65,'Kilifi'),
('level1','KE_1_003',2009,'country','KE','Tuberculosis Treatment',0.5,'Kilifi'),
('level1','KE_1_003',2009,'country','KE','Malaria',7.1,'Kilifi'),
('level1','KE_1_003',2009,'country','KE','Maternal & Child Health Care (MCH)',26.5,'Kilifi'),
('level1','KE_1_003',2009,'country','KE','Not Stated',0,'Kilifi'),
('level1','KE_1_003',2009,'country','KE','Nutrition Feeding',0.3,'Kilifi'),
('level1','KE_1_003',2009,'country','KE','HIV/AIDS',0.7,'Kilifi'),
('level1','KE_1_020',2009,'country','KE','Not Stated',0,'Kirinyaga'),
('level1','KE_1_020',2009,'country','KE','Nutrition Feeding',0,'Kirinyaga'),
('level1','KE_1_020',2009,'country','KE','Malaria',10.5,'Kirinyaga'),
('level1','KE_1_020',2009,'country','KE','Tuberculosis Treatment',0,'Kirinyaga'),
('level1','KE_1_020',2009,'country','KE','Other',32.2,'Kirinyaga'),
('level1','KE_1_020',2009,'country','KE','Maternal & Child Health Care (MCH)',54.7,'Kirinyaga'),
('level1','KE_1_020',2009,'country','KE','HIV/AIDS',2.6,'Kirinyaga'),
('level1','KE_1_045',2009,'country','KE','Malaria',1.6,'Kisii'),
('level1','KE_1_045',2009,'country','KE','HIV/AIDS',0.6,'Kisii'),
('level1','KE_1_045',2009,'country','KE','Not Stated',0,'Kisii'),
('level1','KE_1_045',2009,'country','KE','Nutrition Feeding',0.2,'Kisii'),
('level1','KE_1_045',2009,'country','KE','Tuberculosis Treatment',0,'Kisii'),
('level1','KE_1_045',2009,'country','KE','Maternal & Child Health Care (MCH)',36.2,'Kisii'),
('level1','KE_1_045',2009,'country','KE','Other',61.4,'Kisii'),
('level1','KE_1_042',2009,'country','KE','Other',21.6,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Nutrition Feeding',2.4,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Malaria',30.6,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','HIV/AIDS',2.8,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Tuberculosis Treatment',0.3,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Maternal & Child Health Care (MCH)',42.2,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Not Stated',0,'Kisumu'),
('level1','KE_1_015',2009,'country','KE','Malaria',21.5,'Kitui'),
('level1','KE_1_015',2009,'country','KE','Tuberculosis Treatment',0.8,'Kitui'),
('level1','KE_1_015',2009,'country','KE','Other',27.5,'Kitui'),
('level1','KE_1_015',2009,'country','KE','HIV/AIDS',0.8,'Kitui'),
('level1','KE_1_015',2009,'country','KE','Nutrition Feeding',0,'Kitui'),
('level1','KE_1_015',2009,'country','KE','Not Stated',0,'Kitui'),
('level1','KE_1_015',2009,'country','KE','Maternal & Child Health Care (MCH)',49.5,'Kitui'),
('level1','KE_1_002',2009,'country','KE','Tuberculosis Treatment',1.1,'Kwale'),
('level1','KE_1_002',2009,'country','KE','HIV/AIDS',0.7,'Kwale'),
('level1','KE_1_002',2009,'country','KE','Maternal & Child Health Care (MCH)',28.8,'Kwale'),
('level1','KE_1_002',2009,'country','KE','Malaria',60.8,'Kwale'),
('level1','KE_1_002',2009,'country','KE','Other',8.3,'Kwale'),
('level1','KE_1_002',2009,'country','KE','Not Stated',0,'Kwale'),
('level1','KE_1_002',2009,'country','KE','Nutrition Feeding',0.4,'Kwale'),
('level1','KE_1_031',2009,'country','KE','Tuberculosis Treatment',0,'Laikipia'),
('level1','KE_1_031',2009,'country','KE','Maternal & Child Health Care (MCH)',18.5,'Laikipia'),
('level1','KE_1_031',2009,'country','KE','Other',79.3,'Laikipia'),
('level1','KE_1_031',2009,'country','KE','Not Stated',0,'Laikipia'),
('level1','KE_1_031',2009,'country','KE','Nutrition Feeding',0,'Laikipia'),
('level1','KE_1_031',2009,'country','KE','HIV/AIDS',1.3,'Laikipia'),
('level1','KE_1_031',2009,'country','KE','Malaria',0.9,'Laikipia'),
('level1','KE_1_005',2009,'country','KE','Malaria',18.2,'Lamu'),
('level1','KE_1_005',2009,'country','KE','Other',55.5,'Lamu'),
('level1','KE_1_005',2009,'country','KE','Not Stated',0,'Lamu'),
('level1','KE_1_005',2009,'country','KE','Nutrition Feeding',0.1,'Lamu'),
('level1','KE_1_005',2009,'country','KE','Tuberculosis Treatment',0.1,'Lamu'),
('level1','KE_1_005',2009,'country','KE','Maternal & Child Health Care (MCH)',25.4,'Lamu'),
('level1','KE_1_005',2009,'country','KE','HIV/AIDS',0.7,'Lamu'),
('level1','KE_1_016',2009,'country','KE','Maternal & Child Health Care (MCH)',55.6,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Other',24.5,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Not Stated',1.3,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Malaria',17.5,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Tuberculosis Treatment',0.2,'Machakos'),
('level1','KE_1_016',2009,'country','KE','HIV/AIDS',0.8,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Nutrition Feeding',0,'Machakos'),
('level1','KE_1_017',2009,'country','KE','Maternal & Child Health Care (MCH)',23,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Other',35.9,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Nutrition Feeding',0.2,'Makueni'),
('level1','KE_1_017',2009,'country','KE','HIV/AIDS',0.2,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Malaria',40.2,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Tuberculosis Treatment',0.4,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Not Stated',0,'Makueni'),
('level1','KE_1_009',2009,'country','KE','HIV/AIDS',0,'Mandera'),
('level1','KE_1_009',2009,'country','KE','Maternal & Child Health Care (MCH)',2.3,'Mandera'),
('level1','KE_1_009',2009,'country','KE','Tuberculosis Treatment',0,'Mandera'),
('level1','KE_1_009',2009,'country','KE','Other',36.2,'Mandera'),
('level1','KE_1_009',2009,'country','KE','Malaria',57.6,'Mandera'),
('level1','KE_1_009',2009,'country','KE','Nutrition Feeding',3.9,'Mandera'),
('level1','KE_1_009',2009,'country','KE','Not Stated',0,'Mandera'),
('level1','KE_1_010',2009,'country','KE','Other',1.2,'Marsabit'),
('level1','KE_1_010',2009,'country','KE','Malaria',0.3,'Marsabit'),
('level1','KE_1_010',2009,'country','KE','HIV/AIDS',1.8,'Marsabit'),
('level1','KE_1_010',2009,'country','KE','Not Stated',0,'Marsabit'),
('level1','KE_1_010',2009,'country','KE','Maternal & Child Health Care (MCH)',95.6,'Marsabit'),
('level1','KE_1_010',2009,'country','KE','Tuberculosis Treatment',1,'Marsabit'),
('level1','KE_1_010',2009,'country','KE','Nutrition Feeding',0,'Marsabit'),
('level1','KE_1_012',2009,'country','KE','Other',66.6,'Meru'),
('level1','KE_1_012',2009,'country','KE','Malaria',3.5,'Meru'),
('level1','KE_1_012',2009,'country','KE','Tuberculosis Treatment',0.3,'Meru'),
('level1','KE_1_012',2009,'country','KE','HIV/AIDS',2.6,'Meru'),
('level1','KE_1_012',2009,'country','KE','Nutrition Feeding',0.3,'Meru'),
('level1','KE_1_012',2009,'country','KE','Not Stated',0.2,'Meru'),
('level1','KE_1_012',2009,'country','KE','Maternal & Child Health Care (MCH)',26.5,'Meru'),
('level1','KE_1_044',2009,'country','KE','Nutrition Feeding',1,'Migori'),
('level1','KE_1_044',2009,'country','KE','Tuberculosis Treatment',0.8,'Migori'),
('level1','KE_1_044',2009,'country','KE','Malaria',35.4,'Migori'),
('level1','KE_1_044',2009,'country','KE','Not Stated',0,'Migori'),
('level1','KE_1_044',2009,'country','KE','Maternal & Child Health Care (MCH)',44.9,'Migori'),
('level1','KE_1_044',2009,'country','KE','HIV/AIDS',15.8,'Migori'),
('level1','KE_1_044',2009,'country','KE','Other',2.1,'Migori'),
('level1','KE_1_001',2009,'country','KE','Nutrition Feeding',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Not Stated',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Other',16.9,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Malaria',2.9,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Maternal & Child Health Care (MCH)',73.1,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Tuberculosis Treatment',1,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','HIV/AIDS',6.1,'Mombasa'),
('level1','KE_1_021',2009,'country','KE','HIV/AIDS',18.9,'Murang''a'),
('level1','KE_1_021',2009,'country','KE','Not Stated',0,'Murang''a'),
('level1','KE_1_021',2009,'country','KE','Tuberculosis Treatment',12.7,'Murang''a'),
('level1','KE_1_021',2009,'country','KE','Maternal & Child Health Care (MCH)',39.7,'Murang''a'),
('level1','KE_1_021',2009,'country','KE','Other',17.7,'Murang''a'),
('level1','KE_1_021',2009,'country','KE','Malaria',6.9,'Murang''a'),
('level1','KE_1_021',2009,'country','KE','Nutrition Feeding',4.1,'Murang''a'),
('level1','KE_1_032',2009,'country','KE','Malaria',3.7,'Nakuru'),
('level1','KE_1_032',2009,'country','KE','Other',44.8,'Nakuru'),
('level1','KE_1_032',2009,'country','KE','HIV/AIDS',2.5,'Nakuru'),
('level1','KE_1_032',2009,'country','KE','Maternal & Child Health Care (MCH)',48.3,'Nakuru'),
('level1','KE_1_032',2009,'country','KE','Not Stated',0,'Nakuru'),
('level1','KE_1_032',2009,'country','KE','Nutrition Feeding',0.4,'Nakuru'),
('level1','KE_1_032',2009,'country','KE','Tuberculosis Treatment',0.4,'Nakuru'),
('level1','KE_1_029',2009,'country','KE','Maternal & Child Health Care (MCH)',75.8,'Nandi'),
('level1','KE_1_029',2009,'country','KE','Nutrition Feeding',1,'Nandi'),
('level1','KE_1_029',2009,'country','KE','Tuberculosis Treatment',0,'Nandi'),
('level1','KE_1_029',2009,'country','KE','Other',17.8,'Nandi'),
('level1','KE_1_029',2009,'country','KE','Malaria',2.3,'Nandi'),
('level1','KE_1_029',2009,'country','KE','Not Stated',1.9,'Nandi'),
('level1','KE_1_029',2009,'country','KE','HIV/AIDS',1.3,'Nandi'),
('level1','KE_1_033',2009,'country','KE','Other',42.8,'Narok'),
('level1','KE_1_033',2009,'country','KE','HIV/AIDS',0.7,'Narok'),
('level1','KE_1_033',2009,'country','KE','Malaria',0,'Narok'),
('level1','KE_1_033',2009,'country','KE','Nutrition Feeding',0,'Narok'),
('level1','KE_1_033',2009,'country','KE','Tuberculosis Treatment',0,'Narok'),
('level1','KE_1_033',2009,'country','KE','Not Stated',0,'Narok'),
('level1','KE_1_033',2009,'country','KE','Maternal & Child Health Care (MCH)',56.5,'Narok'),
('country','KE',2009,'continent','AFR','Not Stated',0.2,'Kenya'),
('country','KE',2009,'continent','AFR','Tuberculosis Treatment',0.4,'Kenya'),
('country','KE',2009,'continent','AFR','HIV/AIDS',3.9,'Kenya'),
('country','KE',2009,'continent','AFR','Maternal & Child Health Care (MCH)',37.6,'Kenya'),
('country','KE',2009,'continent','AFR','Nutrition Feeding',0.8,'Kenya'),
('country','KE',2009,'continent','AFR','Other',39.2,'Kenya'),
('country','KE',2009,'continent','AFR','Malaria',17.9,'Kenya'),
('level1','KE_1_046',2009,'country','KE','Maternal & Child Health Care (MCH)',79.2,'Nyamira'),
('level1','KE_1_046',2009,'country','KE','Malaria',11.4,'Nyamira'),
('level1','KE_1_046',2009,'country','KE','Not Stated',0,'Nyamira'),
('level1','KE_1_046',2009,'country','KE','Nutrition Feeding',4.8,'Nyamira'),
('level1','KE_1_046',2009,'country','KE','Other',3,'Nyamira'),
('level1','KE_1_046',2009,'country','KE','HIV/AIDS',1.3,'Nyamira'),
('level1','KE_1_046',2009,'country','KE','Tuberculosis Treatment',0.2,'Nyamira'),
('level1','KE_1_018',2009,'country','KE','Malaria',3.9,'Nyandarua'),
('level1','KE_1_018',2009,'country','KE','Not Stated',2.8,'Nyandarua'),
('level1','KE_1_018',2009,'country','KE','Maternal & Child Health Care (MCH)',43.4,'Nyandarua'),
('level1','KE_1_018',2009,'country','KE','HIV/AIDS',6.2,'Nyandarua'),
('level1','KE_1_018',2009,'country','KE','Tuberculosis Treatment',0,'Nyandarua'),
('level1','KE_1_018',2009,'country','KE','Other',43.6,'Nyandarua'),
('level1','KE_1_018',2009,'country','KE','Nutrition Feeding',0,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE','Nutrition Feeding',0,'Nyeri'),
('level1','KE_1_019',2009,'country','KE','Other',21.8,'Nyeri'),
('level1','KE_1_019',2009,'country','KE','HIV/AIDS',4.1,'Nyeri'),
('level1','KE_1_019',2009,'country','KE','Not Stated',3.4,'Nyeri'),
('level1','KE_1_019',2009,'country','KE','Tuberculosis Treatment',0,'Nyeri'),
('level1','KE_1_019',2009,'country','KE','Maternal & Child Health Care (MCH)',70.6,'Nyeri'),
('level1','KE_1_019',2009,'country','KE','Malaria',0,'Nyeri'),
('level1','KE_1_025',2009,'country','KE','Tuberculosis Treatment',0,'Samburu'),
('level1','KE_1_025',2009,'country','KE','Maternal & Child Health Care (MCH)',19.2,'Samburu'),
('level1','KE_1_025',2009,'country','KE','Other',69.9,'Samburu'),
('level1','KE_1_025',2009,'country','KE','HIV/AIDS',0,'Samburu'),
('level1','KE_1_025',2009,'country','KE','Not Stated',0.5,'Samburu'),
('level1','KE_1_025',2009,'country','KE','Malaria',9.5,'Samburu'),
('level1','KE_1_025',2009,'country','KE','Nutrition Feeding',0.9,'Samburu'),
('level1','KE_1_041',2009,'country','KE','HIV/AIDS',27.8,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Nutrition Feeding',2.2,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Other',6.6,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Not Stated',0,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Malaria',26.9,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Tuberculosis Treatment',0.7,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Maternal & Child Health Care (MCH)',35.7,'Siaya'),
('level1','KE_1_004',2009,'country','KE','Tuberculosis Treatment',0,'Tana River'),
('level1','KE_1_004',2009,'country','KE','Malaria',9.3,'Tana River'),
('level1','KE_1_004',2009,'country','KE','Maternal & Child Health Care (MCH)',85.3,'Tana River'),
('level1','KE_1_004',2009,'country','KE','HIV/AIDS',0.8,'Tana River'),
('level1','KE_1_004',2009,'country','KE','Other',2.7,'Tana River'),
('level1','KE_1_004',2009,'country','KE','Not Stated',0,'Tana River'),
('level1','KE_1_004',2009,'country','KE','Nutrition Feeding',1.9,'Tana River'),
('level1','KE_1_013',2009,'country','KE','Malaria',73.2,'Tharaka-Nithi'),
('level1','KE_1_013',2009,'country','KE','Maternal & Child Health Care (MCH)',12.5,'Tharaka-Nithi'),
('level1','KE_1_013',2009,'country','KE','Nutrition Feeding',0.2,'Tharaka-Nithi'),
('level1','KE_1_013',2009,'country','KE','HIV/AIDS',0,'Tharaka-Nithi'),
('level1','KE_1_013',2009,'country','KE','Not Stated',4.6,'Tharaka-Nithi'),
('level1','KE_1_013',2009,'country','KE','Other',9.5,'Tharaka-Nithi'),
('level1','KE_1_013',2009,'country','KE','Tuberculosis Treatment',0,'Tharaka-Nithi'),
('level1','KE_1_023',2009,'country','KE','Maternal & Child Health Care (MCH)',16.1,'Turkana'),
('level1','KE_1_023',2009,'country','KE','Other',72.6,'Turkana'),
('level1','KE_1_023',2009,'country','KE','Not Stated',0,'Turkana'),
('level1','KE_1_023',2009,'country','KE','Malaria',10.8,'Turkana'),
('level1','KE_1_023',2009,'country','KE','Nutrition Feeding',0.3,'Turkana'),
('level1','KE_1_023',2009,'country','KE','Tuberculosis Treatment',0.2,'Turkana'),
('level1','KE_1_023',2009,'country','KE','HIV/AIDS',0,'Turkana'),
('level1','KE_1_027',2009,'country','KE','HIV/AIDS',10.7,'Uasin Gishu'),
('level1','KE_1_027',2009,'country','KE','Maternal & Child Health Care (MCH)',58.8,'Uasin Gishu'),
('level1','KE_1_027',2009,'country','KE','Tuberculosis Treatment',0,'Uasin Gishu'),
('level1','KE_1_027',2009,'country','KE','Malaria',6.5,'Uasin Gishu'),
('level1','KE_1_027',2009,'country','KE','Other',20.8,'Uasin Gishu'),
('level1','KE_1_027',2009,'country','KE','Not Stated',0,'Uasin Gishu'),
('level1','KE_1_027',2009,'country','KE','Nutrition Feeding',3.3,'Uasin Gishu'),
('level1','KE_1_038',2009,'country','KE','Other',6.4,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Tuberculosis Treatment',0.2,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Not Stated',0,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Malaria',29.5,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Maternal & Child Health Care (MCH)',61.2,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Nutrition Feeding',0,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','HIV/AIDS',2.7,'Vihiga'),
('level1','KE_1_008',2009,'country','KE','Malaria',34.3,'Wajir'),
('level1','KE_1_008',2009,'country','KE','Nutrition Feeding',0,'Wajir'),
('level1','KE_1_008',2009,'country','KE','Tuberculosis Treatment',26.3,'Wajir'),
('level1','KE_1_008',2009,'country','KE','Not Stated',0,'Wajir'),
('level1','KE_1_008',2009,'country','KE','Other',16.6,'Wajir'),
('level1','KE_1_008',2009,'country','KE','HIV/AIDS',0,'Wajir'),
('level1','KE_1_008',2009,'country','KE','Maternal & Child Health Care (MCH)',22.8,'Wajir'),
('level1','KE_1_024',2009,'country','KE','Nutrition Feeding',1.2,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Other',47.5,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Not Stated',1.4,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Maternal & Child Health Care (MCH)',43.7,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','HIV/AIDS',0.1,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Malaria',6,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Tuberculosis Treatment',0,'West Pokot');
