SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.essential_medicine_kenya DROP CONSTRAINT IF EXISTS pk_essential_medicine_kenya;
DROP TABLE IF EXISTS public.essential_medicine_kenya;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.essential_medicine_kenya (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable NUMERIC,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.essential_medicine_kenya ADD CONSTRAINT pk_essential_medicine_kenya PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.essential_medicine_kenya VALUES
('level1','KE_1_030',2009,'country','KE',2013,29,'Baringo'),
('level1','KE_1_036',2009,'country','KE',2013,35,'Bomet'),
('level1','KE_1_039',2009,'country','KE',2013,35,'Bungoma'),
('level1','KE_1_040',2009,'country','KE',2013,37,'Busia'),
('level1','KE_1_028',2009,'country','KE',2013,30,'Elgeyo-Marakwet'),
('level1','KE_1_014',2009,'country','KE',2013,46,'Embu'),
('level1','KE_1_007',2009,'country','KE',2013,47,'Garissa'),
('level1','KE_1_043',2009,'country','KE',2013,41,'Homa Bay'),
('level1','KE_1_011',2009,'country','KE',2013,44,'Isiolo'),
('level1','KE_1_034',2009,'country','KE',2013,52,'Kajiado'),
('level1','KE_1_037',2009,'country','KE',2013,36,'Kakamega'),
('country','KE',2009,'continent','AFR',2013,41,'Kenya'),
('level1','KE_1_035',2009,'country','KE',2013,40,'Kericho'),
('level1','KE_1_022',2009,'country','KE',2013,55,'Kiambu'),
('level1','KE_1_003',2009,'country','KE',2013,40,'Kilifi'),
('level1','KE_1_020',2009,'country','KE',2013,38,'Kirinyaga'),
('level1','KE_1_045',2009,'country','KE',2013,45,'Kisii'),
('level1','KE_1_042',2009,'country','KE',2013,50,'Kisumu'),
('level1','KE_1_015',2009,'country','KE',2013,34,'Kitui'),
('level1','KE_1_002',2009,'country','KE',2013,44,'Kwale'),
('level1','KE_1_031',2009,'country','KE',2013,48,'Laikipia'),
('level1','KE_1_005',2009,'country','KE',2013,54,'Lamu'),
('level1','KE_1_016',2009,'country','KE',2013,41,'Machakos'),
('level1','KE_1_017',2009,'country','KE',2013,36,'Makueni'),
('level1','KE_1_009',2009,'country','KE',2013,47,'Mandera'),
('level1','KE_1_010',2009,'country','KE',2013,38,'Marsabit'),
('level1','KE_1_012',2009,'country','KE',2013,41,'Meru'),
('level1','KE_1_044',2009,'country','KE',2013,37,'Migori'),
('level1','KE_1_001',2009,'country','KE',2013,38,'Mombasa'),
('level1','KE_1_021',2009,'country','KE',2013,46,'Murang''a'),
('level1','KE_1_047',2009,'country','KE',2013,35,'Nairobi'),
('level1','KE_1_032',2009,'country','KE',2013,49,'Nakuru'),
('level1','KE_1_029',2009,'country','KE',2013,30,'Nandi'),
('level1','KE_1_033',2009,'country','KE',2013,42,'Narok'),
('level1','KE_1_046',2009,'country','KE',2013,42,'Nyamira'),
('level1','KE_1_018',2009,'country','KE',2013,46,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE',2013,46,'Nyeri'),
('level1','KE_1_025',2009,'country','KE',2013,33,'Samburu'),
('level1','KE_1_041',2009,'country','KE',2013,42,'Siaya'),
('level1','KE_1_004',2009,'country','KE',2013,34,'Tana River'),
('level1','KE_1_013',2009,'country','KE',2013,47,'Tharaka-Nithi'),
('level1','KE_1_026',2009,'country','KE',2013,28,'Trans-Nzoia'),
('level1','KE_1_023',2009,'country','KE',2013,38,'Turkana'),
('level1','KE_1_027',2009,'country','KE',2013,42,'Uasin Gishu'),
('level1','KE_1_038',2009,'country','KE',2013,46,'Vihiga'),
('level1','KE_1_008',2009,'country','KE',2013,43,'Wajir'),
('level1','KE_1_024',2009,'country','KE',2013,29,'West Pokot'),
('level1','KE_1_030',2009,'country','KE',2018,35,'Baringo'),
('level1','KE_1_036',2009,'country','KE',2018,43,'Bomet'),
('level1','KE_1_039',2009,'country','KE',2018,24,'Bungoma'),
('level1','KE_1_040',2009,'country','KE',2018,39,'Busia'),
('level1','KE_1_028',2009,'country','KE',2018,30,'Elgeyo-Marakwet'),
('level1','KE_1_014',2009,'country','KE',2018,44,'Embu'),
('level1','KE_1_007',2009,'country','KE',2018,38,'Garissa'),
('level1','KE_1_043',2009,'country','KE',2018,39,'Homa Bay'),
('level1','KE_1_011',2009,'country','KE',2018,42,'Isiolo'),
('level1','KE_1_034',2009,'country','KE',2018,44,'Kajiado'),
('level1','KE_1_037',2009,'country','KE',2018,39,'Kakamega'),
('country','KE',2009,'continent','AFR',2018,43,'Kenya'),
('level1','KE_1_035',2009,'country','KE',2018,32,'Kericho'),
('level1','KE_1_022',2009,'country','KE',2018,53,'Kiambu'),
('level1','KE_1_003',2009,'country','KE',2018,44,'Kilifi'),
('level1','KE_1_020',2009,'country','KE',2018,40,'Kirinyaga'),
('level1','KE_1_045',2009,'country','KE',2018,40,'Kisii'),
('level1','KE_1_042',2009,'country','KE',2018,47,'Kisumu'),
('level1','KE_1_015',2009,'country','KE',2018,53,'Kitui'),
('level1','KE_1_002',2009,'country','KE',2018,54,'Kwale'),
('level1','KE_1_031',2009,'country','KE',2018,40,'Laikipia'),
('level1','KE_1_005',2009,'country','KE',2018,40,'Lamu'),
('level1','KE_1_016',2009,'country','KE',2018,45,'Machakos'),
('level1','KE_1_017',2009,'country','KE',2018,48,'Makueni'),
('level1','KE_1_009',2009,'country','KE',2018,48,'Mandera'),
('level1','KE_1_010',2009,'country','KE',2018,59,'Marsabit'),
('level1','KE_1_012',2009,'country','KE',2018,37,'Meru'),
('level1','KE_1_044',2009,'country','KE',2018,36,'Migori'),
('level1','KE_1_001',2009,'country','KE',2018,43,'Mombasa'),
('level1','KE_1_021',2009,'country','KE',2018,51,'Murang''a'),
('level1','KE_1_047',2009,'country','KE',2018,57,'Nairobi'),
('level1','KE_1_032',2009,'country','KE',2018,44,'Nakuru'),
('level1','KE_1_029',2009,'country','KE',2018,48,'Nandi'),
('level1','KE_1_033',2009,'country','KE',2018,46,'Narok'),
('level1','KE_1_046',2009,'country','KE',2018,38,'Nyamira'),
('level1','KE_1_018',2009,'country','KE',2018,57,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE',2018,53,'Nyeri'),
('level1','KE_1_025',2009,'country','KE',2018,51,'Samburu'),
('level1','KE_1_041',2009,'country','KE',2018,37,'Siaya'),
('level1','KE_1_004',2009,'country','KE',2018,37,'Tana River'),
('level1','KE_1_013',2009,'country','KE',2018,45,'Tharaka-Nithi'),
('level1','KE_1_026',2009,'country','KE',2018,34,'Trans-Nzoia'),
('level1','KE_1_023',2009,'country','KE',2018,30,'Turkana'),
('level1','KE_1_027',2009,'country','KE',2018,41,'Uasin Gishu'),
('level1','KE_1_038',2009,'country','KE',2018,44,'Vihiga'),
('level1','KE_1_008',2009,'country','KE',2018,37,'Wajir'),
('level1','KE_1_024',2009,'country','KE',2018,33,'West Pokot') ON CONFLICT DO NOTHING;