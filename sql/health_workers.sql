SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.health_workers DROP CONSTRAINT IF EXISTS pk_health_workers;
DROP TABLE IF EXISTS public.health_workers;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.health_workers (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable NUMERIC,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.health_workers ADD CONSTRAINT pk_health_workers PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.health_workers VALUES
('level1','KE_1_030',2009,'country','KE',2013,17.7,'Baringo'),
('level1','KE_1_036',2009,'country','KE',2013,8,'Bomet'),
('level1','KE_1_039',2009,'country','KE',2013,9.6,'Bungoma'),
('level1','KE_1_040',2009,'country','KE',2013,10.6,'Busia'),
('level1','KE_1_028',2009,'country','KE',2013,14,'Elgeyo-Marakwet'),
('level1','KE_1_014',2009,'country','KE',2013,53.5,'Embu'),
('level1','KE_1_007',2009,'country','KE',2013,20.2,'Garissa'),
('level1','KE_1_043',2009,'country','KE',2013,11.1,'Homa Bay'),
('level1','KE_1_011',2009,'country','KE',2013,35,'Isiolo'),
('level1','KE_1_034',2009,'country','KE',2013,6.5,'Kajiado'),
('level1','KE_1_037',2009,'country','KE',2013,12.6,'Kakamega'),
('country','KE',2009,'continent','AFR',2013,17.5,'Kenya'),
('level1','KE_1_035',2009,'country','KE',2013,12.6,'Kericho'),
('level1','KE_1_022',2009,'country','KE',2013,24.4,'Kiambu'),
('level1','KE_1_003',2009,'country','KE',2013,9.6,'Kilifi'),
('level1','KE_1_020',2009,'country','KE',2013,20.9,'Kirinyaga'),
('level1','KE_1_045',2009,'country','KE',2013,5.3,'Kisii'),
('level1','KE_1_042',2009,'country','KE',2013,10.2,'Kisumu'),
('level1','KE_1_015',2009,'country','KE',2013,13.1,'Kitui'),
('level1','KE_1_002',2009,'country','KE',2013,10.9,'Kwale'),
('level1','KE_1_031',2009,'country','KE',2013,30.8,'Laikipia'),
('level1','KE_1_005',2009,'country','KE',2013,12.5,'Lamu'),
('level1','KE_1_016',2009,'country','KE',2013,20.3,'Machakos'),
('level1','KE_1_017',2009,'country','KE',2013,11.4,'Makueni'),
('level1','KE_1_009',2009,'country','KE',2013,11.2,'Mandera'),
('level1','KE_1_010',2009,'country','KE',2013,23.4,'Marsabit'),
('level1','KE_1_012',2009,'country','KE',2013,21.7,'Meru'),
('level1','KE_1_044',2009,'country','KE',2013,10.1,'Migori'),
('level1','KE_1_001',2009,'country','KE',2013,46.7,'Mombasa'),
('level1','KE_1_021',2009,'country','KE',2013,8.6,'Murang''a'),
('level1','KE_1_047',2009,'country','KE',2013,16.1,'Nairobi'),
('level1','KE_1_032',2009,'country','KE',2013,21.4,'Nakuru'),
('level1','KE_1_029',2009,'country','KE',2013,13.1,'Nandi'),
('level1','KE_1_033',2009,'country','KE',2013,7.4,'Narok'),
('level1','KE_1_046',2009,'country','KE',2013,10.3,'Nyamira'),
('level1','KE_1_018',2009,'country','KE',2013,33.7,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE',2013,14.3,'Nyeri'),
('level1','KE_1_025',2009,'country','KE',2013,20.9,'Samburu'),
('level1','KE_1_041',2009,'country','KE',2013,11.1,'Siaya'),
('level1','KE_1_004',2009,'country','KE',2013,9.4,'Tana River'),
('level1','KE_1_013',2009,'country','KE',2013,30.2,'Tharaka-Nithi'),
('level1','KE_1_026',2009,'country','KE',2013,14.4,'Trans-Nzoia'),
('level1','KE_1_023',2009,'country','KE',2013,5.3,'Turkana'),
('level1','KE_1_027',2009,'country','KE',2013,40.5,'Uasin Gishu'),
('level1','KE_1_038',2009,'country','KE',2013,12,'Vihiga'),
('level1','KE_1_008',2009,'country','KE',2013,11.7,'Wajir'),
('level1','KE_1_024',2009,'country','KE',2013,18.1,'West Pokot'),
('level1','KE_1_030',2009,'country','KE',2018,10.6,'Baringo'),
('level1','KE_1_036',2009,'country','KE',2018,8.9,'Bomet'),
('level1','KE_1_039',2009,'country','KE',2018,8.5,'Bungoma'),
('level1','KE_1_040',2009,'country','KE',2018,11.9,'Busia'),
('level1','KE_1_028',2009,'country','KE',2018,9.9,'Elgeyo-Marakwet'),
('level1','KE_1_014',2009,'country','KE',2018,21.2,'Embu'),
('level1','KE_1_007',2009,'country','KE',2018,10,'Garissa'),
('level1','KE_1_043',2009,'country','KE',2018,14.2,'Homa Bay'),
('level1','KE_1_011',2009,'country','KE',2018,22,'Isiolo'),
('level1','KE_1_034',2009,'country','KE',2018,24.6,'Kajiado'),
('level1','KE_1_037',2009,'country','KE',2018,9.9,'Kakamega'),
('country','KE',2009,'continent','AFR',2018,15.6,'Kenya'),
('level1','KE_1_035',2009,'country','KE',2018,16.2,'Kericho'),
('level1','KE_1_022',2009,'country','KE',2018,22.8,'Kiambu'),
('level1','KE_1_003',2009,'country','KE',2018,10,'Kilifi'),
('level1','KE_1_020',2009,'country','KE',2018,22.3,'Kirinyaga'),
('level1','KE_1_045',2009,'country','KE',2018,13.6,'Kisii'),
('level1','KE_1_042',2009,'country','KE',2018,22.6,'Kisumu'),
('level1','KE_1_015',2009,'country','KE',2018,14.9,'Kitui'),
('level1','KE_1_002',2009,'country','KE',2018,8,'Kwale'),
('level1','KE_1_031',2009,'country','KE',2018,16.5,'Laikipia'),
('level1','KE_1_005',2009,'country','KE',2018,24.6,'Lamu'),
('level1','KE_1_016',2009,'country','KE',2018,18.2,'Machakos'),
('level1','KE_1_017',2009,'country','KE',2018,13.2,'Makueni'),
('level1','KE_1_009',2009,'country','KE',2018,5.2,'Mandera'),
('level1','KE_1_010',2009,'country','KE',2018,13.5,'Marsabit'),
('level1','KE_1_012',2009,'country','KE',2018,18.6,'Meru'),
('level1','KE_1_044',2009,'country','KE',2018,11.3,'Migori'),
('level1','KE_1_001',2009,'country','KE',2018,19.2,'Mombasa'),
('level1','KE_1_021',2009,'country','KE',2018,9.3,'Murang''a'),
('level1','KE_1_047',2009,'country','KE',2018,26.3,'Nairobi'),
('level1','KE_1_032',2009,'country','KE',2018,19.3,'Nakuru'),
('level1','KE_1_029',2009,'country','KE',2018,8.8,'Nandi'),
('level1','KE_1_033',2009,'country','KE',2018,6.1,'Narok'),
('level1','KE_1_046',2009,'country','KE',2018,14.1,'Nyamira'),
('level1','KE_1_018',2009,'country','KE',2018,11.6,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE',2018,31,'Nyeri'),
('level1','KE_1_025',2009,'country','KE',2018,11.3,'Samburu'),
('level1','KE_1_041',2009,'country','KE',2018,13.7,'Siaya'),
('level1','KE_1_004',2009,'country','KE',2018,7.2,'Tana River'),
('level1','KE_1_013',2009,'country','KE',2018,33.8,'Tharaka-Nithi'),
('level1','KE_1_026',2009,'country','KE',2018,7.5,'Trans-Nzoia'),
('level1','KE_1_023',2009,'country','KE',2018,7.4,'Turkana'),
('level1','KE_1_027',2009,'country','KE',2018,28.2,'Uasin Gishu'),
('level1','KE_1_038',2009,'country','KE',2018,12.2,'Vihiga'),
('level1','KE_1_008',2009,'country','KE',2018,6.1,'Wajir'),
('level1','KE_1_024',2009,'country','KE',2018,9.3,'West Pokot') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','KE','allHealthWorkers','"Kenya Service Availability and Readiness Assessment Mapping (SARAM), 2013 and Kenya Harmonized Health Facility Assessment (KHFA), 2018/2019"','https://open.africa/dataset/health-workers-in-kenya') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','KE','allHealthWorkers','"Kenya Service Availability and Readiness Assessment Mapping (SARAM), 2013 and Kenya Harmonized Health Facility Assessment (KHFA), 2018/2019"','https://open.africa/dataset/health-workers-in-kenya') ON CONFLICT DO NOTHING;
