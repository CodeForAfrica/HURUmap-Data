SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.problems_women_face_to_access_healthcare DROP CONSTRAINT IF EXISTS pk_problems_women_face_to_access_healthcare;
DROP TABLE IF EXISTS public.problems_women_face_to_access_healthcare;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.problems_women_face_to_access_healthcare (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.problems_women_face_to_access_healthcare VALUES
('level1','ZA_1_003',2009,'country','ZA','At least one problem accessing health care',49.4,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Getting permission to go for treatment',14.2,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Distance to health facility',34.2,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Getting money for treatment',37,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Not wanting to go alone',19.7,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Getting money for treatment',25.5,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Distance to health facility',16.8,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','At least one problem accessing health care',31.4,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Not wanting to go alone',9.8,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Getting permission to go for treatment',10.9,'Free State'),
('level1','ZA_1_009',2009,'country','ZA','Distance to health facility',16.2,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','At least one problem accessing health care',34.4,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Not wanting to go alone',6.6,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Getting permission to go for treatment',10.1,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Getting money for treatment',26.1,'Gauteng'),
('level1','ZA_1_001',2009,'country','ZA','At least one problem accessing health care',39.6,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Not wanting to go alone',24.6,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Distance to health facility',29.7,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Getting permission to go for treatment',23.9,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Getting money for treatment',27.8,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Getting money for treatment',37.5,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Getting permission to go for treatment',22.8,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','At least one problem accessing health care',48.1,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Distance to health facility',33.1,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Not wanting to go alone',18.8,'Limpopo'),
('level1','ZA_1_004',2009,'country','ZA','At least one problem accessing health care',38.9,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Distance to health facility',30.1,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Getting money for treatment',25.7,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Getting permission to go for treatment',14.6,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Not wanting to go alone',11.6,'Mpumalanga'),
('level1','ZA_1_007',2009,'country','ZA','Distance to health facility',31.8,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Getting money for treatment',32.9,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Getting permission to go for treatment',10.6,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Not wanting to go alone',17.4,'North West'),
('level1','ZA_1_007',2009,'country','ZA','At least one problem accessing health care',46.3,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Distance to health facility',23.7,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','At least one problem accessing health care',38,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Not wanting to go alone',10,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Getting permission to go for treatment',15.8,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Getting money for treatment',28,'Northern Cape'),
('country','ZA',2009,'continent','AFR','At least one problem accessing health care',38.8,'South Africa'),
('country','ZA',2009,'continent','AFR','Not wanting to go alone',14.1,'South Africa'),
('country','ZA',2009,'continent','AFR','Distance to health facility',25.2,'South Africa'),
('country','ZA',2009,'continent','AFR','Getting money for treatment',28.5,'South Africa'),
('country','ZA',2009,'continent','AFR','Getting permission to go for treatment',14.5,'South Africa'),
('level1','ZA_1_008',2009,'country','ZA','Not wanting to go alone',8.6,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Distance to health facility',11.3,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Getting money for treatment',16,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','At least one problem accessing health care',23.3,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Getting permission to go for treatment',7.2,'Western Cape');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allProblemsWomenFaceToAccessHealthcares','"Demographic and Health Survey, 2016"','https://open.africa/dataset/demographic-and-health-survey-2016-south-africa/resource/9077443b-c590-49f9-9483-0a0b18d9a27b') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allProblemsWomenFaceToAccessHealthcares','"Demographic and Health Survey, 2016"','https://open.africa/dataset/demographic-and-health-survey-2016-south-africa/resource/9077443b-c590-49f9-9483-0a0b18d9a27b') on conflict do nothing;

ALTER TABLE ONLY public.problems_women_face_to_access_healthcare ADD CONSTRAINT pk_problems_women_face_to_access_healthcare PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);
