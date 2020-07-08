SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.icu_beds DROP CONSTRAINT IF EXISTS pk_icu_beds;
DROP TABLE IF EXISTS public.icu_beds;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.icu_beds (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.icu_beds ADD CONSTRAINT pk_icu_beds PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.icu_beds VALUES
('level1','KE_1_030',2009,'country','KE','Available ICU beds for Isolation',0,'Baringo'),
('level1','KE_1_036',2009,'country','KE','Available ICU beds for Isolation',0,'Bomet'),
('level1','KE_1_039',2009,'country','KE','Available ICU beds for Isolation',0,'Bungoma'),
('level1','KE_1_040',2009,'country','KE','Available ICU beds for Isolation',0,'Busia'),
('level1','KE_1_028',2009,'country','KE','Available ICU beds for Isolation',0,'Elgeyo-Marakwet'),
('level1','KE_1_014',2009,'country','KE','Available ICU beds for Isolation',0,'Embu'),
('level1','KE_1_007',2009,'country','KE','Available ICU beds for Isolation',0,'Garissa'),
('level1','KE_1_043',2009,'country','KE','Available ICU beds for Isolation',0,'Homa Bay'),
('level1','KE_1_011',2009,'country','KE','Available ICU beds for Isolation',0,'Isiolo'),
('level1','KE_1_034',2009,'country','KE','Available ICU beds for Isolation',0,'Kajiado'),
('level1','KE_1_037',2009,'country','KE','Available ICU beds for Isolation',0,'Kakamega'),
('country','KE',2009,'continent','AFR','Available ICU beds for Isolation',38,'Kenya'),
('level1','KE_1_035',2009,'country','KE','Available ICU beds for Isolation',0,'Kericho'),
('level1','KE_1_022',2009,'country','KE','Available ICU beds for Isolation',0,'Kiambu'),
('level1','KE_1_003',2009,'country','KE','Available ICU beds for Isolation',0,'Kilifi'),
('level1','KE_1_020',2009,'country','KE','Available ICU beds for Isolation',0,'Kirinyaga'),
('level1','KE_1_045',2009,'country','KE','Available ICU beds for Isolation',0,'Kisii'),
('level1','KE_1_042',2009,'country','KE','Available ICU beds for Isolation',0,'Kisumu'),
('level1','KE_1_015',2009,'country','KE','Available ICU beds for Isolation',0,'Kitui'),
('level1','KE_1_002',2009,'country','KE','Available ICU beds for Isolation',0,'Kwale'),
('level1','KE_1_031',2009,'country','KE','Available ICU beds for Isolation',0,'Laikipia'),
('level1','KE_1_005',2009,'country','KE','Available ICU beds for Isolation',0,'Lamu'),
('level1','KE_1_016',2009,'country','KE','Available ICU beds for Isolation',0,'Machakos'),
('level1','KE_1_017',2009,'country','KE','Available ICU beds for Isolation',0,'Makueni'),
('level1','KE_1_009',2009,'country','KE','Available ICU beds for Isolation',10,'Mandera'),
('level1','KE_1_010',2009,'country','KE','Available ICU beds for Isolation',0,'Marsabit'),
('level1','KE_1_012',2009,'country','KE','Available ICU beds for Isolation',0,'Meru'),
('level1','KE_1_044',2009,'country','KE','Available ICU beds for Isolation',0,'Migori'),
('level1','KE_1_001',2009,'country','KE','Available ICU beds for Isolation',0,'Mombasa'),
('level1','KE_1_021',2009,'country','KE','Available ICU beds for Isolation',0,'Murang''a'),
('level1','KE_1_047',2009,'country','KE','Available ICU beds for Isolation',25,'Nairobi'),
('level1','KE_1_032',2009,'country','KE','Available ICU beds for Isolation',1,'Nakuru'),
('level1','KE_1_029',2009,'country','KE','Available ICU beds for Isolation',0,'Nandi'),
('level1','KE_1_033',2009,'country','KE','Available ICU beds for Isolation',0,'Narok'),
('level1','KE_1_046',2009,'country','KE','Available ICU beds for Isolation',0,'Nyamira'),
('level1','KE_1_018',2009,'country','KE','Available ICU beds for Isolation',0,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE','Available ICU beds for Isolation',2,'Nyeri'),
('level1','KE_1_025',2009,'country','KE','Available ICU beds for Isolation',0,'Samburu'),
('level1','KE_1_041',2009,'country','KE','Available ICU beds for Isolation',0,'Siaya'),
('level1','KE_1_004',2009,'country','KE','Available ICU beds for Isolation',0,'Tana River'),
('level1','KE_1_013',2009,'country','KE','Available ICU beds for Isolation',0,'Tharaka-Nithi'),
('level1','KE_1_026',2009,'country','KE','Available ICU beds for Isolation',0,'Trans-Nzoia'),
('level1','KE_1_023',2009,'country','KE','Available ICU beds for Isolation',0,'Turkana'),
('level1','KE_1_027',2009,'country','KE','Available ICU beds for Isolation',0,'Uasin Gishu'),
('level1','KE_1_038',2009,'country','KE','Available ICU beds for Isolation',0,'Vihiga'),
('level1','KE_1_008',2009,'country','KE','Available ICU beds for Isolation',0,'Wajir'),
('level1','KE_1_024',2009,'country','KE','Available ICU beds for Isolation',0,'West Pokot'),
('level1','KE_1_030',2009,'country','KE','General ICU beds',0,'Baringo'),
('level1','KE_1_036',2009,'country','KE','General ICU beds',19,'Bomet'),
('level1','KE_1_039',2009,'country','KE','General ICU beds',23,'Bungoma'),
('level1','KE_1_040',2009,'country','KE','General ICU beds',0,'Busia'),
('level1','KE_1_028',2009,'country','KE','General ICU beds',6,'Elgeyo-Marakwet'),
('level1','KE_1_014',2009,'country','KE','General ICU beds',12,'Embu'),
('level1','KE_1_007',2009,'country','KE','General ICU beds',6,'Garissa'),
('level1','KE_1_043',2009,'country','KE','General ICU beds',2,'Homa Bay'),
('level1','KE_1_011',2009,'country','KE','General ICU beds',0,'Isiolo'),
('level1','KE_1_034',2009,'country','KE','General ICU beds',0,'Kajiado'),
('level1','KE_1_037',2009,'country','KE','General ICU beds',9,'Kakamega'),
('level1','KE_1_035',2009,'country','KE','General ICU beds',6,'Kericho'),
('level1','KE_1_022',2009,'country','KE','General ICU beds',34,'Kiambu'),
('level1','KE_1_003',2009,'country','KE','General ICU beds',0,'Kilifi'),
('level1','KE_1_020',2009,'country','KE','General ICU beds',4,'Kirinyaga'),
('level1','KE_1_045',2009,'country','KE','General ICU beds',14,'Kisii'),
('level1','KE_1_042',2009,'country','KE','General ICU beds',21,'Kisumu'),
('level1','KE_1_015',2009,'country','KE','General ICU beds',0,'Kitui'),
('level1','KE_1_002',2009,'country','KE','General ICU beds',6,'Kwale'),
('level1','KE_1_031',2009,'country','KE','General ICU beds',3,'Laikipia'),
('level1','KE_1_005',2009,'country','KE','General ICU beds',0,'Lamu'),
('level1','KE_1_016',2009,'country','KE','General ICU beds',6,'Machakos'),
('level1','KE_1_017',2009,'country','KE','General ICU beds',4,'Makueni'),
('level1','KE_1_009',2009,'country','KE','General ICU beds',0,'Mandera'),
('level1','KE_1_010',2009,'country','KE','General ICU beds',0,'Marsabit'),
('level1','KE_1_012',2009,'country','KE','General ICU beds',6,'Meru'),
('level1','KE_1_044',2009,'country','KE','General ICU beds',0,'Migori'),
('level1','KE_1_001',2009,'country','KE','General ICU beds',38,'Mombasa'),
('level1','KE_1_021',2009,'country','KE','General ICU beds',4,'Murang''a'),
('level1','KE_1_047',2009,'country','KE','General ICU beds',258,'Nairobi'),
('level1','KE_1_032',2009,'country','KE','General ICU beds',19,'Nakuru'),
('level1','KE_1_029',2009,'country','KE','General ICU beds',2,'Nandi'),
('level1','KE_1_033',2009,'country','KE','General ICU beds',6,'Narok'),
('level1','KE_1_046',2009,'country','KE','General ICU beds',0,'Nyamira'),
('level1','KE_1_018',2009,'country','KE','General ICU beds',0,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE','General ICU beds',21,'Nyeri'),
('level1','KE_1_025',2009,'country','KE','General ICU beds',0,'Samburu'),
('level1','KE_1_041',2009,'country','KE','General ICU beds',0,'Siaya'),
('level1','KE_1_004',2009,'country','KE','General ICU beds',0,'Tana River'),
('level1','KE_1_013',2009,'country','KE','General ICU beds',0,'Tharaka-Nithi'),
('level1','KE_1_026',2009,'country','KE','General ICU beds',0,'Trans-Nzoia'),
('level1','KE_1_023',2009,'country','KE','General ICU beds',3,'Turkana'),
('level1','KE_1_027',2009,'country','KE','General ICU beds',55,'Uasin Gishu'),
('level1','KE_1_038',2009,'country','KE','General ICU beds',0,'Vihiga'),
('level1','KE_1_008',2009,'country','KE','General ICU beds',0,'Wajir'),
('level1','KE_1_024',2009,'country','KE','General ICU beds',0,'West Pokot'),
('country','KE',2009,'continent','AFR','General ICU beds',587,'Kenya'),
('level1','KE_1_030',2009,'country','KE','Regular isolation beds',0,'Baringo'),
('level1','KE_1_036',2009,'country','KE','Regular isolation beds',44,'Bomet'),
('level1','KE_1_039',2009,'country','KE','Regular isolation beds',10,'Bungoma'),
('level1','KE_1_040',2009,'country','KE','Regular isolation beds',100,'Busia'),
('level1','KE_1_028',2009,'country','KE','Regular isolation beds',20,'Elgeyo-Marakwet'),
('level1','KE_1_014',2009,'country','KE','Regular isolation beds',16,'Embu'),
('level1','KE_1_007',2009,'country','KE','Regular isolation beds',10,'Garissa'),
('level1','KE_1_043',2009,'country','KE','Regular isolation beds',16,'Homa Bay'),
('level1','KE_1_011',2009,'country','KE','Regular isolation beds',26,'Isiolo'),
('level1','KE_1_034',2009,'country','KE','Regular isolation beds',28,'Kajiado'),
('level1','KE_1_037',2009,'country','KE','Regular isolation beds',14,'Kakamega'),
('country','KE',2009,'continent','AFR','Regular isolation beds',1893,'Kenya'),
('level1','KE_1_035',2009,'country','KE','Regular isolation beds',36,'Kericho'),
('level1','KE_1_022',2009,'country','KE','Regular isolation beds',34,'Kiambu'),
('level1','KE_1_003',2009,'country','KE','Regular isolation beds',80,'Kilifi'),
('level1','KE_1_020',2009,'country','KE','Regular isolation beds',14,'Kirinyaga'),
('level1','KE_1_045',2009,'country','KE','Regular isolation beds',50,'Kisii'),
('level1','KE_1_042',2009,'country','KE','Regular isolation beds',20,'Kisumu'),
('level1','KE_1_015',2009,'country','KE','Regular isolation beds',33,'Kitui'),
('level1','KE_1_002',2009,'country','KE','Regular isolation beds',6,'Kwale'),
('level1','KE_1_031',2009,'country','KE','Regular isolation beds',33,'Laikipia'),
('level1','KE_1_005',2009,'country','KE','Regular isolation beds',12,'Lamu'),
('level1','KE_1_016',2009,'country','KE','Regular isolation beds',24,'Machakos'),
('level1','KE_1_017',2009,'country','KE','Regular isolation beds',111,'Makueni'),
('level1','KE_1_009',2009,'country','KE','Regular isolation beds',50,'Mandera'),
('level1','KE_1_010',2009,'country','KE','Regular isolation beds',20,'Marsabit'),
('level1','KE_1_012',2009,'country','KE','Regular isolation beds',8,'Meru'),
('level1','KE_1_044',2009,'country','KE','Regular isolation beds',30,'Migori'),
('level1','KE_1_001',2009,'country','KE','Regular isolation beds',19,'Mombasa'),
('level1','KE_1_021',2009,'country','KE','Regular isolation beds',14,'Murang''a'),
('level1','KE_1_047',2009,'country','KE','Regular isolation beds',582,'Nairobi'),
('level1','KE_1_032',2009,'country','KE','Regular isolation beds',36,'Nakuru'),
('level1','KE_1_029',2009,'country','KE','Regular isolation beds',35,'Nandi'),
('level1','KE_1_033',2009,'country','KE','Regular isolation beds',11,'Narok'),
('level1','KE_1_046',2009,'country','KE','Regular isolation beds',22,'Nyamira'),
('level1','KE_1_018',2009,'country','KE','Regular isolation beds',13,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE','Regular isolation beds',18,'Nyeri'),
('level1','KE_1_025',2009,'country','KE','Regular isolation beds',10,'Samburu'),
('level1','KE_1_041',2009,'country','KE','Regular isolation beds',8,'Siaya'),
('level1','KE_1_004',2009,'country','KE','Regular isolation beds',30,'Tana River'),
('level1','KE_1_013',2009,'country','KE','Regular isolation beds',24,'Tharaka-Nithi'),
('level1','KE_1_026',2009,'country','KE','Regular isolation beds',40,'Trans-Nzoia'),
('level1','KE_1_023',2009,'country','KE','Regular isolation beds',12,'Turkana'),
('level1','KE_1_027',2009,'country','KE','Regular isolation beds',37,'Uasin Gishu'),
('level1','KE_1_038',2009,'country','KE','Regular isolation beds',6,'Vihiga'),
('level1','KE_1_008',2009,'country','KE','Regular isolation beds',6,'Wajir'),
('level1','KE_1_024',2009,'country','KE','Regular isolation beds',85,'West Pokot'),
('level1','KE_1_030',2009,'country','KE','Available ventilators for isolation',0,'Baringo'),
('level1','KE_1_036',2009,'country','KE','Available ventilators for isolation',0,'Bomet'),
('level1','KE_1_039',2009,'country','KE','Available ventilators for isolation',0,'Bungoma'),
('level1','KE_1_040',2009,'country','KE','Available ventilators for isolation',0,'Busia'),
('level1','KE_1_028',2009,'country','KE','Available ventilators for isolation',0,'Elgeyo-Marakwet'),
('level1','KE_1_014',2009,'country','KE','Available ventilators for isolation',0,'Embu'),
('level1','KE_1_007',2009,'country','KE','Available ventilators for isolation',0,'Garissa'),
('level1','KE_1_043',2009,'country','KE','Available ventilators for isolation',0,'Homa Bay'),
('level1','KE_1_011',2009,'country','KE','Available ventilators for isolation',0,'Isiolo'),
('level1','KE_1_034',2009,'country','KE','Available ventilators for isolation',0,'Kajiado'),
('level1','KE_1_037',2009,'country','KE','Available ventilators for isolation',0,'Kakamega'),
('country','KE',2009,'continent','AFR','Available ventilators for isolation',31,'Kenya'),
('level1','KE_1_035',2009,'country','KE','Available ventilators for isolation',0,'Kericho'),
('level1','KE_1_022',2009,'country','KE','Available ventilators for isolation',0,'Kiambu'),
('level1','KE_1_003',2009,'country','KE','Available ventilators for isolation',0,'Kilifi'),
('level1','KE_1_020',2009,'country','KE','Available ventilators for isolation',0,'Kirinyaga'),
('level1','KE_1_045',2009,'country','KE','Available ventilators for isolation',0,'Kisii'),
('level1','KE_1_042',2009,'country','KE','Available ventilators for isolation',0,'Kisumu'),
('level1','KE_1_015',2009,'country','KE','Available ventilators for isolation',0,'Kitui'),
('level1','KE_1_002',2009,'country','KE','Available ventilators for isolation',0,'Kwale'),
('level1','KE_1_031',2009,'country','KE','Available ventilators for isolation',0,'Laikipia'),
('level1','KE_1_005',2009,'country','KE','Available ventilators for isolation',0,'Lamu'),
('level1','KE_1_016',2009,'country','KE','Available ventilators for isolation',0,'Machakos'),
('level1','KE_1_017',2009,'country','KE','Available ventilators for isolation',0,'Makueni'),
('level1','KE_1_009',2009,'country','KE','Available ventilators for isolation',0,'Mandera'),
('level1','KE_1_010',2009,'country','KE','Available ventilators for isolation',0,'Marsabit'),
('level1','KE_1_012',2009,'country','KE','Available ventilators for isolation',2,'Meru'),
('level1','KE_1_044',2009,'country','KE','Available ventilators for isolation',0,'Migori'),
('level1','KE_1_001',2009,'country','KE','Available ventilators for isolation',0,'Mombasa'),
('level1','KE_1_021',2009,'country','KE','Available ventilators for isolation',0,'Murang''a'),
('level1','KE_1_047',2009,'country','KE','Available ventilators for isolation',29,'Nairobi'),
('level1','KE_1_032',2009,'country','KE','Available ventilators for isolation',0,'Nakuru'),
('level1','KE_1_029',2009,'country','KE','Available ventilators for isolation',0,'Nandi'),
('level1','KE_1_033',2009,'country','KE','Available ventilators for isolation',0,'Narok'),
('level1','KE_1_046',2009,'country','KE','Available ventilators for isolation',0,'Nyamira'),
('level1','KE_1_018',2009,'country','KE','Available ventilators for isolation',0,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE','Available ventilators for isolation',0,'Nyeri'),
('level1','KE_1_025',2009,'country','KE','Available ventilators for isolation',0,'Samburu'),
('level1','KE_1_041',2009,'country','KE','Available ventilators for isolation',0,'Siaya'),
('level1','KE_1_004',2009,'country','KE','Available ventilators for isolation',0,'Tana River'),
('level1','KE_1_013',2009,'country','KE','Available ventilators for isolation',0,'Tharaka-Nithi'),
('level1','KE_1_026',2009,'country','KE','Available ventilators for isolation',0,'Trans-Nzoia'),
('level1','KE_1_023',2009,'country','KE','Available ventilators for isolation',0,'Turkana'),
('level1','KE_1_027',2009,'country','KE','Available ventilators for isolation',0,'Uasin Gishu'),
('level1','KE_1_038',2009,'country','KE','Available ventilators for isolation',0,'Vihiga'),
('level1','KE_1_008',2009,'country','KE','Available ventilators for isolation',0,'Wajir'),
('level1','KE_1_024',2009,'country','KE','Available ventilators for isolation',0,'West Pokot') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','KE','allIcuBeds','"Kenya Healthcare Federation, 2020"','https://open.africa/organization/kenya-healthcare-federation') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','KE','allIcuBeds','"Kenya Healthcare Federation, 2020"','https://open.africa/organization/kenya-healthcare-federation') ON CONFLICT DO NOTHING;