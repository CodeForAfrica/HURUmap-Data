SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.access_to_improved_toilet DROP CONSTRAINT IF EXISTS pk_access_to_improved_toilet;
DROP TABLE IF EXISTS public.access_to_improved_toilet;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.access_to_improved_toilet (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.access_to_improved_toilet ADD CONSTRAINT pk_access_to_improved_toilet PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.access_to_improved_toilet VALUES
('level1','NG_1_001',2009,'country','NG','Unimproved toilet facility',6.9,'Abia'),
('level1','NG_1_001',2009,'country','NG','Shared improved toilet facility',33.5,'Abia'),
('level1','NG_1_001',2009,'country','NG','"Improved, non-shared toilet facilities"',59.6,'Abia'),
('level1','NG_1_002',2009,'country','NG','Unimproved toilet facility',23.5,'Adamawa'),
('level1','NG_1_002',2009,'country','NG','"Improved, non-shared toilet facilities"',56,'Adamawa'),
('level1','NG_1_002',2009,'country','NG','Shared improved toilet facility',20.4,'Adamawa'),
('level1','NG_1_003',2009,'country','NG','"Improved, non-shared toilet facilities"',49.2,'Akwa Ibom'),
('level1','NG_1_003',2009,'country','NG','Unimproved toilet facility',11.8,'Akwa Ibom'),
('level1','NG_1_003',2009,'country','NG','Shared improved toilet facility',39,'Akwa Ibom'),
('level1','NG_1_004',2009,'country','NG','Shared improved toilet facility',19.2,'Anambra'),
('level1','NG_1_004',2009,'country','NG','"Improved, non-shared toilet facilities"',63.3,'Anambra'),
('level1','NG_1_004',2009,'country','NG','Unimproved toilet facility',17.5,'Anambra'),
('level1','NG_1_005',2009,'country','NG','Shared improved toilet facility',4.1,'Bauchi'),
('level1','NG_1_005',2009,'country','NG','Unimproved toilet facility',69.1,'Bauchi'),
('level1','NG_1_005',2009,'country','NG','"Improved, non-shared toilet facilities"',26.8,'Bauchi'),
('level1','NG_1_006',2009,'country','NG','Shared improved toilet facility',11.4,'Bayelsa'),
('level1','NG_1_006',2009,'country','NG','"Improved, non-shared toilet facilities"',20.1,'Bayelsa'),
('level1','NG_1_006',2009,'country','NG','Unimproved toilet facility',68.5,'Bayelsa'),
('level1','NG_1_007',2009,'country','NG','Shared improved toilet facility',10.5,'Benue'),
('level1','NG_1_007',2009,'country','NG','Unimproved toilet facility',56.2,'Benue'),
('level1','NG_1_007',2009,'country','NG','"Improved, non-shared toilet facilities"',33.3,'Benue'),
('level1','NG_1_008',2009,'country','NG','"Improved, non-shared toilet facilities"',49.3,'Borno'),
('level1','NG_1_008',2009,'country','NG','Unimproved toilet facility',34.1,'Borno'),
('level1','NG_1_008',2009,'country','NG','Shared improved toilet facility',16.5,'Borno'),
('level1','NG_1_009',2009,'country','NG','Unimproved toilet facility',53.5,'Cross River'),
('level1','NG_1_009',2009,'country','NG','"Improved, non-shared toilet facilities"',22.8,'Cross River'),
('level1','NG_1_009',2009,'country','NG','Shared improved toilet facility',23.7,'Cross River'),
('level1','NG_1_010',2009,'country','NG','Unimproved toilet facility',34.4,'Delta'),
('level1','NG_1_010',2009,'country','NG','"Improved, non-shared toilet facilities"',42.3,'Delta'),
('level1','NG_1_010',2009,'country','NG','Shared improved toilet facility',23.3,'Delta'),
('level1','NG_1_011',2009,'country','NG','Unimproved toilet facility',82.8,'Ebonyi'),
('level1','NG_1_011',2009,'country','NG','"Improved, non-shared toilet facilities"',9.9,'Ebonyi'),
('level1','NG_1_011',2009,'country','NG','Shared improved toilet facility',7.3,'Ebonyi'),
('level1','NG_1_012',2009,'country','NG','Unimproved toilet facility',30.2,'Edo'),
('level1','NG_1_012',2009,'country','NG','"Improved, non-shared toilet facilities"',38.6,'Edo'),
('level1','NG_1_012',2009,'country','NG','Shared improved toilet facility',31.3,'Edo'),
('level1','NG_1_013',2009,'country','NG','Unimproved toilet facility',50.3,'Ekiti'),
('level1','NG_1_013',2009,'country','NG','"Improved, non-shared toilet facilities"',23.9,'Ekiti'),
('level1','NG_1_013',2009,'country','NG','Shared improved toilet facility',25.9,'Ekiti'),
('level1','NG_1_014',2009,'country','NG','Shared improved toilet facility',14.2,'Enugu'),
('level1','NG_1_014',2009,'country','NG','Unimproved toilet facility',60.8,'Enugu'),
('level1','NG_1_014',2009,'country','NG','"Improved, non-shared toilet facilities"',25.1,'Enugu'),
('level1','NG_1_015',2009,'country','NG','"Improved, non-shared toilet facilities"',41,'Federal Capital Territory'),
('level1','NG_1_015',2009,'country','NG','Unimproved toilet facility',31.2,'Federal Capital Territory'),
('level1','NG_1_015',2009,'country','NG','Shared improved toilet facility',27.8,'Federal Capital Territory'),
('level1','NG_1_016',2009,'country','NG','"Improved, non-shared toilet facilities"',67.8,'Gombe'),
('level1','NG_1_016',2009,'country','NG','Unimproved toilet facility',26.5,'Gombe'),
('level1','NG_1_016',2009,'country','NG','Shared improved toilet facility',5.7,'Gombe'),
('level1','NG_1_017',2009,'country','NG','Shared improved toilet facility',10.5,'Imo'),
('level1','NG_1_017',2009,'country','NG','Unimproved toilet facility',11.4,'Imo'),
('level1','NG_1_017',2009,'country','NG','"Improved, non-shared toilet facilities"',78.1,'Imo'),
('level1','NG_1_018',2009,'country','NG','Shared improved toilet facility',0.6,'Jigawa'),
('level1','NG_1_018',2009,'country','NG','"Improved, non-shared toilet facilities"',17.1,'Jigawa'),
('level1','NG_1_018',2009,'country','NG','Unimproved toilet facility',82.3,'Jigawa'),
('level1','NG_1_019',2009,'country','NG','Shared improved toilet facility',38.7,'Kaduna'),
('level1','NG_1_019',2009,'country','NG','"Improved, non-shared toilet facilities"',27.1,'Kaduna'),
('level1','NG_1_019',2009,'country','NG','Unimproved toilet facility',34.2,'Kaduna'),
('level1','NG_1_020',2009,'country','NG','Shared improved toilet facility',8.8,'Kano'),
('level1','NG_1_020',2009,'country','NG','Unimproved toilet facility',46.4,'Kano'),
('level1','NG_1_020',2009,'country','NG','"Improved, non-shared toilet facilities"',44.8,'Kano'),
('level1','NG_1_021',2009,'country','NG','"Improved, non-shared toilet facilities"',35.1,'Katsina'),
('level1','NG_1_021',2009,'country','NG','Unimproved toilet facility',60.7,'Katsina'),
('level1','NG_1_021',2009,'country','NG','Shared improved toilet facility',4.3,'Katsina'),
('level1','NG_1_022',2009,'country','NG','Unimproved toilet facility',77.3,'Kebbi'),
('level1','NG_1_022',2009,'country','NG','Shared improved toilet facility',13.4,'Kebbi'),
('level1','NG_1_022',2009,'country','NG','"Improved, non-shared toilet facilities"',9.2,'Kebbi'),
('level1','NG_1_023',2009,'country','NG','Shared improved toilet facility',12.4,'Kogi'),
('level1','NG_1_023',2009,'country','NG','Unimproved toilet facility',73.3,'Kogi'),
('level1','NG_1_023',2009,'country','NG','"Improved, non-shared toilet facilities"',14.3,'Kogi'),
('level1','NG_1_024',2009,'country','NG','"Improved, non-shared toilet facilities"',15.3,'Kwara'),
('level1','NG_1_024',2009,'country','NG','Unimproved toilet facility',58.4,'Kwara'),
('level1','NG_1_024',2009,'country','NG','Shared improved toilet facility',26.3,'Kwara'),
('level1','NG_1_025',2009,'country','NG','Unimproved toilet facility',12.8,'Lagos'),
('level1','NG_1_025',2009,'country','NG','"Improved, non-shared toilet facilities"',41.4,'Lagos'),
('level1','NG_1_025',2009,'country','NG','Shared improved toilet facility',45.7,'Lagos'),
('level1','NG_1_026',2009,'country','NG','Shared improved toilet facility',36.8,'Nasarawa'),
('level1','NG_1_026',2009,'country','NG','"Improved, non-shared toilet facilities"',28.8,'Nasarawa'),
('level1','NG_1_026',2009,'country','NG','Unimproved toilet facility',34.4,'Nasarawa'),
('level1','NG_1_027',2009,'country','NG','Shared improved toilet facility',18.4,'Niger'),
('level1','NG_1_027',2009,'country','NG','Unimproved toilet facility',61.5,'Niger'),
('level1','NG_1_027',2009,'country','NG','"Improved, non-shared toilet facilities"',20,'Niger'),
('country','NG',2009,'continent','AFR','Unimproved toilet facility',46.6,'Nigeria'),
('country','NG',2009,'continent','AFR','"Improved, non-shared toilet facilities"',34.2,'Nigeria'),
('country','NG',2009,'continent','AFR','Shared improved toilet facility',19.2,'Nigeria'),
('level1','ZA_1_006',2009,'country','ZA','Shared improved toilet facility',11.6,'North West'),
('level1','ZA_1_006',2009,'country','ZA','"Improved, non-shared toilet facilities"',30.8,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Unimproved toilet facility',57.6,'North West'),
('level1','NG_1_028',2009,'country','NG','Shared improved toilet facility',52.6,'Ogun'),
('level1','NG_1_028',2009,'country','NG','"Improved, non-shared toilet facilities"',24.4,'Ogun'),
('level1','NG_1_028',2009,'country','NG','Unimproved toilet facility',23,'Ogun'),
('level1','NG_1_029',2009,'country','NG','"Improved, non-shared toilet facilities"',18,'Ondo'),
('level1','NG_1_029',2009,'country','NG','Shared improved toilet facility',31.6,'Ondo'),
('level1','NG_1_029',2009,'country','NG','Unimproved toilet facility',50.4,'Ondo'),
('level1','NG_1_030',2009,'country','NG','"Improved, non-shared toilet facilities"',24.9,'Osun'),
('level1','NG_1_030',2009,'country','NG','Unimproved toilet facility',37.6,'Osun'),
('level1','NG_1_030',2009,'country','NG','Shared improved toilet facility',37.5,'Osun'),
('level1','NG_1_031',2009,'country','NG','"Improved, non-shared toilet facilities"',25.8,'Oyo'),
('level1','NG_1_031',2009,'country','NG','Unimproved toilet facility',37.3,'Oyo'),
('level1','NG_1_031',2009,'country','NG','Shared improved toilet facility',36.9,'Oyo'),
('level1','NG_1_032',2009,'country','NG','Shared improved toilet facility',13.2,'Plateau'),
('level1','NG_1_032',2009,'country','NG','"Improved, non-shared toilet facilities"',22.3,'Plateau'),
('level1','NG_1_032',2009,'country','NG','Unimproved toilet facility',64.4,'Plateau'),
('level1','NG_1_033',2009,'country','NG','"Improved, non-shared toilet facilities"',34.3,'Rivers'),
('level1','NG_1_033',2009,'country','NG','Unimproved toilet facility',39,'Rivers'),
('level1','NG_1_033',2009,'country','NG','Shared improved toilet facility',26.7,'Rivers'),
('level1','NG_1_034',2009,'country','NG','Shared improved toilet facility',4.4,'Sokoto'),
('level1','NG_1_034',2009,'country','NG','"Improved, non-shared toilet facilities"',39.1,'Sokoto'),
('level1','NG_1_034',2009,'country','NG','Unimproved toilet facility',56.5,'Sokoto'),
('level1','NG_1_035',2009,'country','NG','Unimproved toilet facility',48.3,'Taraba'),
('level1','NG_1_035',2009,'country','NG','"Improved, non-shared toilet facilities"',42.3,'Taraba'),
('level1','NG_1_035',2009,'country','NG','Shared improved toilet facility',9.4,'Taraba'),
('level1','NG_1_036',2009,'country','NG','"Improved, non-shared toilet facilities"',28,'Yobe'),
('level1','NG_1_036',2009,'country','NG','Shared improved toilet facility',2.8,'Yobe'),
('level1','NG_1_036',2009,'country','NG','Unimproved toilet facility',69.2,'Yobe'),
('level1','NG_1_037',2009,'country','NG','Unimproved toilet facility',72.4,'Zamfara'),
('level1','NG_1_037',2009,'country','NG','"Improved, non-shared toilet facilities"',26.1,'Zamfara'),
('level1','NG_1_037',2009,'country','NG','Shared improved toilet facility',1.5,'Zamfara') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','NG','allAccessToImprovedToilets','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/c57546ee-d175-4efd-95e3-5fdd53a0e996') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','NG','allAccessToImprovedToilets','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/c57546ee-d175-4efd-95e3-5fdd53a0e996') ON CONFLICT DO NOTHING;