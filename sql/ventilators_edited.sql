SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.ventilators_edited DROP CONSTRAINT IF EXISTS pk_ventilators_edited;
DROP TABLE IF EXISTS public.ventilators_edited;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.ventilators_edited (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.ventilators_edited ADD CONSTRAINT pk_ventilators_edited PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.ventilators_edited VALUES
('level1','KE_1_030',2009,'country','KE','Bag-valve-mask',15,'Baringo'),
('level1','KE_1_030',2009,'country','KE','Invasive mechanical',3,'Baringo'),
('level1','KE_1_030',2009,'country','KE','Non-invasive mechanical',1,'Baringo'),
('level1','KE_1_036',2009,'country','KE','Bag-valve-mask',4,'Bomet'),
('level1','KE_1_036',2009,'country','KE','Invasive mechanical',1,'Bomet'),
('level1','KE_1_036',2009,'country','KE','Non-invasive mechanical',1,'Bomet'),
('level1','KE_1_039',2009,'country','KE','Bag-valve-mask',20,'Bungoma'),
('level1','KE_1_039',2009,'country','KE','Invasive mechanical',3,'Bungoma'),
('level1','KE_1_039',2009,'country','KE','Non-invasive mechanical',8,'Bungoma'),
('level1','KE_1_040',2009,'country','KE','Bag-valve-mask',12,'Busia'),
('level1','KE_1_040',2009,'country','KE','Invasive mechanical',0,'Busia'),
('level1','KE_1_040',2009,'country','KE','Non-invasive mechanical',2,'Busia'),
('level1','KE_1_028',2009,'country','KE','Bag-valve-mask',26,'Elgeyo-Marakwet'),
('level1','KE_1_028',2009,'country','KE','Invasive mechanical',7,'Elgeyo-Marakwet'),
('level1','KE_1_028',2009,'country','KE','Non-invasive mechanical',5,'Elgeyo-Marakwet'),
('level1','KE_1_014',2009,'country','KE','Bag-valve-mask',12,'Embu'),
('level1','KE_1_014',2009,'country','KE','Invasive mechanical',0,'Embu'),
('level1','KE_1_014',2009,'country','KE','Non-invasive mechanical',1,'Embu'),
('level1','KE_1_007',2009,'country','KE','Bag-valve-mask',11,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Invasive mechanical',1,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Non-invasive mechanical',4,'Garissa'),
('level1','KE_1_043',2009,'country','KE','Bag-valve-mask',36,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Invasive mechanical',1,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Non-invasive mechanical',3,'Homa Bay'),
('level1','KE_1_011',2009,'country','KE','Bag-valve-mask',31,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Invasive mechanical',3,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Non-invasive mechanical',6,'Isiolo'),
('level1','KE_1_034',2009,'country','KE','Bag-valve-mask',23,'Kajiado'),
('level1','KE_1_034',2009,'country','KE','Invasive mechanical',2,'Kajiado'),
('level1','KE_1_034',2009,'country','KE','Non-invasive mechanical',5,'Kajiado'),
('level1','KE_1_037',2009,'country','KE','Bag-valve-mask',26,'Kakamega'),
('level1','KE_1_037',2009,'country','KE','Invasive mechanical',2,'Kakamega'),
('level1','KE_1_037',2009,'country','KE','Non-invasive mechanical',4,'Kakamega'),
('level1','KE_1_035',2009,'country','KE','Bag-valve-mask',8,'Kericho'),
('level1','KE_1_035',2009,'country','KE','Invasive mechanical',5,'Kericho'),
('level1','KE_1_035',2009,'country','KE','Non-invasive mechanical',0,'Kericho'),
('level1','KE_1_022',2009,'country','KE','Bag-valve-mask',24,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Invasive mechanical',6,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Non-invasive mechanical',4,'Kiambu'),
('level1','KE_1_003',2009,'country','KE','Bag-valve-mask',29,'Kilifi'),
('level1','KE_1_003',2009,'country','KE','Invasive mechanical',4,'Kilifi'),
('level1','KE_1_003',2009,'country','KE','Non-invasive mechanical',5,'Kilifi'),
('level1','KE_1_020',2009,'country','KE','Bag-valve-mask',17,'Kirinyaga'),
('level1','KE_1_020',2009,'country','KE','Invasive mechanical',3,'Kirinyaga'),
('level1','KE_1_020',2009,'country','KE','Non-invasive mechanical',0,'Kirinyaga'),
('level1','KE_1_045',2009,'country','KE','Bag-valve-mask',14,'Kisii'),
('level1','KE_1_045',2009,'country','KE','Invasive mechanical',2,'Kisii'),
('level1','KE_1_045',2009,'country','KE','Non-invasive mechanical',3,'Kisii'),
('level1','KE_1_042',2009,'country','KE','Bag-valve-mask',28,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Invasive mechanical',4,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Non-invasive mechanical',9,'Kisumu'),
('level1','KE_1_015',2009,'country','KE','Bag-valve-mask',13,'Kitui'),
('level1','KE_1_015',2009,'country','KE','Invasive mechanical',2,'Kitui'),
('level1','KE_1_015',2009,'country','KE','Non-invasive mechanical',0,'Kitui'),
('level1','KE_1_002',2009,'country','KE','Bag-valve-mask',35,'Kwale'),
('level1','KE_1_002',2009,'country','KE','Invasive mechanical',1,'Kwale'),
('level1','KE_1_002',2009,'country','KE','Non-invasive mechanical',3,'Kwale'),
('level1','KE_1_031',2009,'country','KE','Bag-valve-mask',9,'Laikipia'),
('level1','KE_1_031',2009,'country','KE','Invasive mechanical',0,'Laikipia'),
('level1','KE_1_031',2009,'country','KE','Non-invasive mechanical',0,'Laikipia'),
('level1','KE_1_005',2009,'country','KE','Bag-valve-mask',19,'Lamu'),
('level1','KE_1_005',2009,'country','KE','Invasive mechanical',0,'Lamu'),
('level1','KE_1_005',2009,'country','KE','Non-invasive mechanical',0,'Lamu'),
('level1','KE_1_016',2009,'country','KE','Bag-valve-mask',17,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Invasive mechanical',2,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Non-invasive mechanical',2,'Machakos'),
('level1','KE_1_017',2009,'country','KE','Bag-valve-mask',32,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Invasive mechanical',2,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Non-invasive mechanical',3,'Makueni'),
('level1','KE_1_009',2009,'country','KE','Bag-valve-mask',11,'Mandera'),
('level1','KE_1_009',2009,'country','KE','Invasive mechanical',0,'Mandera'),
('level1','KE_1_009',2009,'country','KE','Non-invasive mechanical',0,'Mandera'),
('level1','KE_1_010',2009,'country','KE','Bag-valve-mask',8,'Marsabit'),
('level1','KE_1_010',2009,'country','KE','Invasive mechanical',3,'Marsabit'),
('level1','KE_1_010',2009,'country','KE','Non-invasive mechanical',3,'Marsabit'),
('level1','KE_1_012',2009,'country','KE','Bag-valve-mask',29,'Meru'),
('level1','KE_1_012',2009,'country','KE','Invasive mechanical',0,'Meru'),
('level1','KE_1_012',2009,'country','KE','Non-invasive mechanical',0,'Meru'),
('level1','KE_1_044',2009,'country','KE','Bag-valve-mask',23,'Migori'),
('level1','KE_1_044',2009,'country','KE','Invasive mechanical',2,'Migori'),
('level1','KE_1_044',2009,'country','KE','Non-invasive mechanical',1,'Migori'),
('level1','KE_1_001',2009,'country','KE','Bag-valve-mask',28,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Invasive mechanical',2,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Non-invasive mechanical',2,'Mombasa'),
('level1','KE_1_021',2009,'country','KE','Bag-valve-mask',10,'Murang''a'),
('level1','KE_1_021',2009,'country','KE','Invasive mechanical',4,'Murang''a'),
('level1','KE_1_021',2009,'country','KE','Non-invasive mechanical',6,'Murang''a'),
('level1','KE_1_047',2009,'country','KE','Bag-valve-mask',40,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Invasive mechanical',14,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Non-invasive mechanical',8,'Nairobi'),
('level1','KE_1_032',2009,'country','KE','Bag-valve-mask',19,'Nakuru'),
('level1','KE_1_032',2009,'country','KE','Invasive mechanical',6,'Nakuru'),
('level1','KE_1_032',2009,'country','KE','Non-invasive mechanical',6,'Nakuru'),
('level1','KE_1_029',2009,'country','KE','Bag-valve-mask',26,'Nandi'),
('level1','KE_1_029',2009,'country','KE','Invasive mechanical',1,'Nandi'),
('level1','KE_1_029',2009,'country','KE','Non-invasive mechanical',0,'Nandi'),
('level1','KE_1_033',2009,'country','KE','Bag-valve-mask',22,'Narok'),
('level1','KE_1_033',2009,'country','KE','Invasive mechanical',2,'Narok'),
('level1','KE_1_033',2009,'country','KE','Non-invasive mechanical',2,'Narok'),
('level1','KE_1_046',2009,'country','KE','Bag-valve-mask',9,'Nyamira'),
('level1','KE_1_046',2009,'country','KE','Invasive mechanical',1,'Nyamira'),
('level1','KE_1_046',2009,'country','KE','Non-invasive mechanical',2,'Nyamira'),
('level1','KE_1_018',2009,'country','KE','Bag-valve-mask',18,'Nyandarua'),
('level1','KE_1_018',2009,'country','KE','Invasive mechanical',0,'Nyandarua'),
('level1','KE_1_018',2009,'country','KE','Non-invasive mechanical',3,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE','Bag-valve-mask',12,'Nyeri'),
('level1','KE_1_019',2009,'country','KE','Invasive mechanical',4,'Nyeri'),
('level1','KE_1_019',2009,'country','KE','Non-invasive mechanical',4,'Nyeri'),
('level1','KE_1_025',2009,'country','KE','Bag-valve-mask',37,'Samburu'),
('level1','KE_1_025',2009,'country','KE','Invasive mechanical',7,'Samburu'),
('level1','KE_1_025',2009,'country','KE','Non-invasive mechanical',5,'Samburu'),
('level1','KE_1_041',2009,'country','KE','Bag-valve-mask',31,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Invasive mechanical',4,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Non-invasive mechanical',11,'Siaya'),
('level1','KE_1_004',2009,'country','KE','Bag-valve-mask',12,'Tana River'),
('level1','KE_1_004',2009,'country','KE','Invasive mechanical',0,'Tana River'),
('level1','KE_1_004',2009,'country','KE','Non-invasive mechanical',2,'Tana River'),
('level1','KE_1_013',2009,'country','KE','Bag-valve-mask',13,'Tharaka-Nithi'),
('level1','KE_1_013',2009,'country','KE','Invasive mechanical',3,'Tharaka-Nithi'),
('level1','KE_1_013',2009,'country','KE','Non-invasive mechanical',2,'Tharaka-Nithi'),
('level1','KE_1_026',2009,'country','KE','Bag-valve-mask',6,'Trans-Nzoia'),
('level1','KE_1_026',2009,'country','KE','Invasive mechanical',0,'Trans-Nzoia'),
('level1','KE_1_026',2009,'country','KE','Non-invasive mechanical',7,'Trans-Nzoia'),
('level1','KE_1_023',2009,'country','KE','Bag-valve-mask',4,'Turkana'),
('level1','KE_1_023',2009,'country','KE','Invasive mechanical',1,'Turkana'),
('level1','KE_1_023',2009,'country','KE','Non-invasive mechanical',1,'Turkana'),
('level1','KE_1_027',2009,'country','KE','Bag-valve-mask',23,'Uasin Gishu'),
('level1','KE_1_027',2009,'country','KE','Invasive mechanical',8,'Uasin Gishu'),
('level1','KE_1_027',2009,'country','KE','Non-invasive mechanical',4,'Uasin Gishu'),
('level1','KE_1_038',2009,'country','KE','Bag-valve-mask',9,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Invasive mechanical',7,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Non-invasive mechanical',5,'Vihiga'),
('level1','KE_1_008',2009,'country','KE','Bag-valve-mask',10,'Wajir'),
('level1','KE_1_008',2009,'country','KE','Invasive mechanical',0,'Wajir'),
('level1','KE_1_008',2009,'country','KE','Non-invasive mechanical',2,'Wajir'),
('level1','KE_1_024',2009,'country','KE','Bag-valve-mask',18,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Invasive mechanical',1,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Non-invasive mechanical',2,'West Pokot'),
('country','KE',2009,'continent','AFR','Bag-valve-mask',20,'Kenya'),
('country','KE',2009,'continent','AFR','Invasive mechanical',3,'Kenya'),
('country','KE',2009,'continent','AFR','Non-invasive mechanical',3,'Kenya') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','KE','allVentilatorsEditeds','"Kenya Harmonized Health Facility Assessment (KHFA), 2018/2019"','https://open.africa/dataset/kenya-harmonized-health-facility-assessment-khfa-2018-2019/resource/3e95dece-f516-4255-bc5f-bc239f23d259') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','KE','allVentilatorsEditeds','"Kenya Harmonized Health Facility Assessment (KHFA), 2018/2019"','https://open.africa/dataset/kenya-harmonized-health-facility-assessment-khfa-2018-2019/resource/3e95dece-f516-4255-bc5f-bc239f23d259') ON CONFLICT DO NOTHING;
