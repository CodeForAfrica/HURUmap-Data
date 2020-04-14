SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.access_to_improved_water_source DROP CONSTRAINT IF EXISTS pk_access_to_improved_water_source;
DROP TABLE IF EXISTS public.access_to_improved_water_source;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.access_to_improved_water_source (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.access_to_improved_water_source ADD CONSTRAINT pk_access_to_improved_water_source PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.access_to_improved_water_source VALUES
('level1','NG_1_001',2009,'country','NG','Improved water source',89.5,'Abia'),
('level1','NG_1_001',2009,'country','NG','Unimproved water source',10.5,'Abia'),
('level1','NG_1_002',2009,'country','NG','Unimproved water source',48.5,'Adamawa'),
('level1','NG_1_002',2009,'country','NG','Improved water source',51.5,'Adamawa'),
('level1','NG_1_003',2009,'country','NG','Improved water source',77.3,'Akwa Ibom'),
('level1','NG_1_003',2009,'country','NG','Unimproved water source',22.7,'Akwa Ibom'),
('level1','NG_1_004',2009,'country','NG','Unimproved water source',24.1,'Anambra'),
('level1','NG_1_004',2009,'country','NG','Improved water source',75.9,'Anambra'),
('level1','NG_1_005',2009,'country','NG','Unimproved water source',41.9,'Bauchi'),
('level1','NG_1_005',2009,'country','NG','Improved water source',58.1,'Bauchi'),
('level1','NG_1_006',2009,'country','NG','Improved water source',52.8,'Bayelsa'),
('level1','NG_1_006',2009,'country','NG','Unimproved water source',47.2,'Bayelsa'),
('level1','NG_1_007',2009,'country','NG','Improved water source',73,'Benue'),
('level1','NG_1_007',2009,'country','NG','Unimproved water source',27,'Benue'),
('level1','NG_1_008',2009,'country','NG','Unimproved water source',41.2,'Borno'),
('level1','NG_1_008',2009,'country','NG','Improved water source',58.8,'Borno'),
('level1','NG_1_009',2009,'country','NG','Improved water source',53.6,'Cross River'),
('level1','NG_1_009',2009,'country','NG','Unimproved water source',46.4,'Cross River'),
('level1','NG_1_010',2009,'country','NG','Unimproved water source',23.9,'Delta'),
('level1','NG_1_010',2009,'country','NG','Improved water source',75.3,'Delta'),
('level1','NG_1_011',2009,'country','NG','Unimproved water source',23.4,'Ebonyi'),
('level1','NG_1_011',2009,'country','NG','Improved water source',76.6,'Ebonyi'),
('level1','NG_1_012',2009,'country','NG','Improved water source',70.3,'Edo'),
('level1','NG_1_012',2009,'country','NG','Unimproved water source',29.6,'Edo'),
('level1','NG_1_013',2009,'country','NG','Unimproved water source',20.1,'Ekiti'),
('level1','NG_1_013',2009,'country','NG','Improved water source',79.8,'Ekiti'),
('level1','NG_1_014',2009,'country','NG','Unimproved water source',41.5,'Enugu'),
('level1','NG_1_014',2009,'country','NG','Improved water source',58.5,'Enugu'),
('level1','NG_1_015',2009,'country','NG','Improved water source',57.8,'Federal Capital Territory'),
('level1','NG_1_015',2009,'country','NG','Unimproved water source',42,'Federal Capital Territory'),
('level1','NG_1_016',2009,'country','NG','Improved water source',35.7,'Gombe'),
('level1','NG_1_016',2009,'country','NG','Unimproved water source',64.3,'Gombe'),
('level1','NG_1_017',2009,'country','NG','Improved water source',89.4,'Imo'),
('level1','NG_1_017',2009,'country','NG','Unimproved water source',10.5,'Imo'),
('level1','NG_1_018',2009,'country','NG','Improved water source',82.2,'Jigawa'),
('level1','NG_1_018',2009,'country','NG','Unimproved water source',17.8,'Jigawa'),
('level1','NG_1_019',2009,'country','NG','Improved water source',66,'Kaduna'),
('level1','NG_1_019',2009,'country','NG','Unimproved water source',34,'Kaduna'),
('level1','NG_1_020',2009,'country','NG','Improved water source',51.2,'Kano'),
('level1','NG_1_020',2009,'country','NG','Unimproved water source',48.8,'Kano'),
('level1','NG_1_021',2009,'country','NG','Improved water source',46.5,'Katsina'),
('level1','NG_1_021',2009,'country','NG','Unimproved water source',53.5,'Katsina'),
('level1','NG_1_022',2009,'country','NG','Improved water source',47.9,'Kebbi'),
('level1','NG_1_022',2009,'country','NG','Unimproved water source',52.1,'Kebbi'),
('level1','NG_1_023',2009,'country','NG','Unimproved water source',34.7,'Kogi'),
('level1','NG_1_023',2009,'country','NG','Improved water source',65.3,'Kogi'),
('level1','NG_1_024',2009,'country','NG','Unimproved water source',36.9,'Kwara'),
('level1','NG_1_024',2009,'country','NG','Improved water source',63.1,'Kwara'),
('level1','NG_1_025',2009,'country','NG','Improved water source',49,'Lagos'),
('level1','NG_1_025',2009,'country','NG','Unimproved water source',50.7,'Lagos'),
('level1','NG_1_026',2009,'country','NG','Improved water source',74.1,'Nasarawa'),
('level1','NG_1_026',2009,'country','NG','Unimproved water source',25.9,'Nasarawa'),
('level1','NG_1_027',2009,'country','NG','Unimproved water source',39.4,'Niger'),
('level1','NG_1_027',2009,'country','NG','Improved water source',60.6,'Niger'),
('country','NG',2009,'continent','AFR','Unimproved water source',37.9,'Nigeria'),
('country','NG',2009,'continent','AFR','Improved water source',62,'Nigeria'),
('level1','ZA_1_006',2009,'country','ZA','Unimproved water source',44.3,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Improved water source',55.5,'North West'),
('level1','NG_1_028',2009,'country','NG','Unimproved water source',26,'Ogun'),
('level1','NG_1_028',2009,'country','NG','Improved water source',74,'Ogun'),
('level1','NG_1_029',2009,'country','NG','Improved water source',65.6,'Ondo'),
('level1','NG_1_029',2009,'country','NG','Unimproved water source',34.4,'Ondo'),
('level1','NG_1_030',2009,'country','NG','Improved water source',81,'Osun'),
('level1','NG_1_030',2009,'country','NG','Unimproved water source',19,'Osun'),
('level1','NG_1_031',2009,'country','NG','Improved water source',77.2,'Oyo'),
('level1','NG_1_031',2009,'country','NG','Unimproved water source',22.6,'Oyo'),
('level1','NG_1_032',2009,'country','NG','Unimproved water source',55.3,'Plateau'),
('level1','NG_1_032',2009,'country','NG','Improved water source',44.7,'Plateau'),
('level1','NG_1_033',2009,'country','NG','Improved water source',77,'Rivers'),
('level1','NG_1_033',2009,'country','NG','Unimproved water source',23,'Rivers'),
('level1','NG_1_034',2009,'country','NG','Unimproved water source',63.5,'Sokoto'),
('level1','NG_1_034',2009,'country','NG','Improved water source',33.6,'Sokoto'),
('level1','NG_1_035',2009,'country','NG','Unimproved water source',61.4,'Taraba'),
('level1','NG_1_035',2009,'country','NG','Improved water source',38.6,'Taraba'),
('level1','NG_1_036',2009,'country','NG','Unimproved water source',37.3,'Yobe'),
('level1','NG_1_036',2009,'country','NG','Improved water source',62.7,'Yobe'),
('level1','NG_1_037',2009,'country','NG','Improved water source',56.2,'Zamfara'),
('level1','NG_1_037',2009,'country','NG','Unimproved water source',43.8,'Zamfara') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','NG','allAccessToImprovedWaterSources','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/5d566ac3-5b8f-4b5c-9829-54d70781c9b7') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','NG','allAccessToImprovedWaterSources','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/5d566ac3-5b8f-4b5c-9829-54d70781c9b7') ON CONFLICT DO NOTHING;
