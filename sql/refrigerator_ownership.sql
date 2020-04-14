SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.refrigerator_ownership DROP CONSTRAINT IF EXISTS pk_refrigerator_ownership;
DROP TABLE IF EXISTS public.refrigerator_ownership;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.refrigerator_ownership (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.refrigerator_ownership ADD CONSTRAINT pk_refrigerator_ownership PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.refrigerator_ownership VALUES
('level1','NG_1_001',2009,'country','NG','Owns a refrigerator',36.3,'Abia'),
('level1','NG_1_002',2009,'country','NG','Owns a refrigerator',7.3,'Adamawa'),
('level1','NG_1_003',2009,'country','NG','Owns a refrigerator',29.1,'Akwa Ibom'),
('level1','NG_1_004',2009,'country','NG','Owns a refrigerator',39.8,'Anambra'),
('level1','NG_1_005',2009,'country','NG','Owns a refrigerator',6.7,'Bauchi'),
('level1','NG_1_006',2009,'country','NG','Owns a refrigerator',26.6,'Bayelsa'),
('level1','NG_1_007',2009,'country','NG','Owns a refrigerator',14.5,'Benue'),
('level1','NG_1_008',2009,'country','NG','Owns a refrigerator',15.8,'Borno'),
('level1','NG_1_009',2009,'country','NG','Owns a refrigerator',21.6,'Cross River'),
('level1','NG_1_010',2009,'country','NG','Owns a refrigerator',31.9,'Delta'),
('level1','NG_1_011',2009,'country','NG','Owns a refrigerator',7.6,'Ebonyi'),
('level1','NG_1_012',2009,'country','NG','Owns a refrigerator',32.7,'Edo'),
('level1','NG_1_013',2009,'country','NG','Owns a refrigerator',19.1,'Ekiti'),
('level1','NG_1_014',2009,'country','NG','Owns a refrigerator',23.3,'Enugu'),
('level1','NG_1_015',2009,'country','NG','Owns a refrigerator',40.3,'Federal Capital Territory'),
('level1','NG_1_016',2009,'country','NG','Owns a refrigerator',10.1,'Gombe'),
('level1','NG_1_017',2009,'country','NG','Owns a refrigerator',40.5,'Imo'),
('level1','NG_1_018',2009,'country','NG','Owns a refrigerator',4.4,'Jigawa'),
('level1','NG_1_019',2009,'country','NG','Owns a refrigerator',20.6,'Kaduna'),
('level1','NG_1_020',2009,'country','NG','Owns a refrigerator',14.8,'Kano'),
('level1','NG_1_021',2009,'country','NG','Owns a refrigerator',8.6,'Katsina'),
('level1','NG_1_022',2009,'country','NG','Owns a refrigerator',5.9,'Kebbi'),
('level1','NG_1_023',2009,'country','NG','Owns a refrigerator',21.3,'Kogi'),
('level1','NG_1_024',2009,'country','NG','Owns a refrigerator',25.8,'Kwara'),
('level1','NG_1_025',2009,'country','NG','Owns a refrigerator',49,'Lagos'),
('level1','NG_1_026',2009,'country','NG','Owns a refrigerator',22.7,'Nasarawa'),
('level1','NG_1_027',2009,'country','NG','Owns a refrigerator',17.1,'Niger'),
('country','NG',2009,'continent','AFR','Owns a refrigerator',22,'Nigeria'),
('level1','ZA_1_006',2009,'country','ZA','Owns a refrigerator',11.4,'North West'),
('level1','NG_1_028',2009,'country','NG','Owns a refrigerator',39.1,'Ogun'),
('level1','NG_1_029',2009,'country','NG','Owns a refrigerator',20.5,'Ondo'),
('level1','NG_1_030',2009,'country','NG','Owns a refrigerator',15.9,'Osun'),
('level1','NG_1_031',2009,'country','NG','Owns a refrigerator',25,'Oyo'),
('level1','NG_1_032',2009,'country','NG','Owns a refrigerator',6.9,'Plateau'),
('level1','NG_1_033',2009,'country','NG','Owns a refrigerator',42.4,'Rivers'),
('level1','NG_1_034',2009,'country','NG','Owns a refrigerator',6.7,'Sokoto'),
('level1','NG_1_035',2009,'country','NG','Owns a refrigerator',7.6,'Taraba'),
('level1','NG_1_036',2009,'country','NG','Owns a refrigerator',6.8,'Yobe'),
('level1','NG_1_037',2009,'country','NG','Owns a refrigerator',8.1,'Zamfara') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','NG','allRefrigeratorOwnerships','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/84dc8f64-394f-463f-96b3-8a0ca3bd29bf') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','NG','allRefrigeratorOwnerships','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/84dc8f64-394f-463f-96b3-8a0ca3bd29bf') ON CONFLICT DO NOTHING;
