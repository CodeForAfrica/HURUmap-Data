SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.number_of_hospital_beds DROP CONSTRAINT IF EXISTS pk_number_of_hospital_beds;
DROP TABLE IF EXISTS public.number_of_hospital_beds;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.number_of_hospital_beds (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.number_of_hospital_beds VALUES
('level1','KE_1_007',2009,'country','KE',503,'Garissa'),
('level1','KE_1_011',2009,'country','KE',571,'Isiolo'),
('level1','KE_1_016',2009,'country','KE',913,'Machakos'),
('level1','KE_1_017',2009,'country','KE',375,'Makueni'),
('level1','KE_1_046',2009,'country','KE',490,'Nyamira'),
('level1','KE_1_006',2009,'country','KE',111,'Taveta'),
('level1','KE_1_038',2009,'country','KE',290,'Vihiga'),
('level1','KE_1_024',2009,'country','KE',191,'West Pokot'),
('level1','KE_1_030',2009,'country','KE',820,'Baringo'),
('level1','KE_1_036',2009,'country','KE',845,'Bomet'),
('level1','KE_1_039',2009,'country','KE',2038,'Bungoma'),
('level1','KE_1_040',2009,'country','KE',1314,'Busia'),
('level1','KE_1_028',2009,'country','KE',858,'Elgeyo-Marakwet'),
('level1','KE_1_014',2009,'country','KE',1705,'Embu'),
('level1','KE_1_007',2009,'country','KE',864,'Garissa'),
('level1','KE_1_043',2009,'country','KE',2006,'Homa Bay'),
('level1','KE_1_011',2009,'country','KE',694,'Isiolo'),
('level1','KE_1_034',2009,'country','KE',1445,'Kajiado'),
('level1','KE_1_037',2009,'country','KE',2464,'Kakamega'),
('level1','KE_1_035',2009,'country','KE',1865,'Kericho'),
('level1','KE_1_022',2009,'country','KE',3790,'Kiambu'),
('level1','KE_1_003',2009,'country','KE',1016,'Kilifi'),
('level1','KE_1_020',2009,'country','KE',1552,'Kirinyaga'),
('level1','KE_1_045',2009,'country','KE',3108,'Kisii'),
('level1','KE_1_042',2009,'country','KE',2956,'Kisumu'),
('level1','KE_1_015',2009,'country','KE',1572,'Kitui'),
('level1','KE_1_002',2009,'country','KE',521,'Kwale'),
('level1','KE_1_031',2009,'country','KE',824,'Laikipia'),
('level1','KE_1_005',2009,'country','KE',233,'Lamu'),
('level1','KE_1_016',2009,'country','KE',2463,'Machakos'),
('level1','KE_1_017',2009,'country','KE',1316,'Makueni'),
('level1','KE_1_009',2009,'country','KE',1154,'Mandera'),
('level1','KE_1_010',2009,'country','KE',639,'Marsabit'),
('level1','KE_1_012',2009,'country','KE',2239,'Meru'),
('level1','KE_1_044',2009,'country','KE',2792,'Migori'),
('level1','KE_1_001',2009,'country','KE',1839,'Mombasa'),
('level1','KE_1_047',2009,'country','KE',9504,'Nairobi'),
('level1','KE_1_032',2009,'country','KE',3144,'Nakuru'),
('level1','KE_1_029',2009,'country','KE',839,'Nandi'),
('level1','KE_1_033',2009,'country','KE',1170,'Narok'),
('level1','KE_1_046',2009,'country','KE',1121,'Nyamira'),
('level1','KE_1_018',2009,'country','KE',588,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE',2175,'Nyeri'),
('level1','KE_1_025',2009,'country','KE',590,'Samburu'),
('level1','KE_1_041',2009,'country','KE',1475,'Siaya'),
('level1','KE_1_006',2009,'country','KE',443,'Taita Taveta'),
('level1','KE_1_004',2009,'country','KE',319,'Tana River'),
('level1','KE_1_023',2009,'country','KE',869,'Turkana'),
('level1','KE_1_027',2009,'country','KE',2216,'Uasin Gishu'),
('level1','KE_1_038',2009,'country','KE',874,'Vihiga'),
('level1','KE_1_008',2009,'country','KE',601,'Wajir'),
('level1','KE_1_024',2009,'country','KE',557,'West Pokot'),
('country','KE',2009,'continent','AFR',74283,'Kenya');
