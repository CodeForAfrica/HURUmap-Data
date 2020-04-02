SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.medical_aid_scheme DROP CONSTRAINT IF EXISTS pk_medical_aid_scheme;
DROP TABLE IF EXISTS public.medical_aid_scheme;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.medical_aid_scheme (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.medical_aid_scheme VALUES
('level1','ZA_1_003',2009,'country','ZA','Yes',644722,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Do not know',0,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','No',5814477,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Unspecified',48938.96,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','No',2394066,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Do not know',1014.212,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Unspecified',34852.21,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Yes',461316,'Free State'),
('level1','ZA_1_009',2009,'country','ZA','Do not know',13949.44,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Unspecified',159159.6,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Yes',3463385,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','No',11024251,'Gauteng'),
('level1','ZA_1_001',2009,'country','ZA','Unspecified',31558.73,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Do not know',12611.01,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Yes',1383185,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','No',9787862,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','No',5325477,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Yes',473641.5,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Do not know',3373.257,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Unspecified',51264.68,'Limpopo'),
('level1','ZA_1_004',2009,'country','ZA','Do not know',3794.126,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','No',3927404,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Yes',568191.7,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Unspecified',24044.02,'Mpumalanga'),
('level1','ZA_1_007',2009,'country','ZA','Do not know',4903.171,'North West'),
('level1','ZA_1_007',2009,'country','ZA','No',3352623,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Yes',523349.8,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Unspecified',44342.5,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Do not know',0,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Unspecified',2772.782,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Yes',197669.5,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','No',1029352,'Northern Cape'),
('country','ZA',2009,'continent','AFR','Unspecified',407870.5,'South Africa'),
('country','ZA',2009,'continent','AFR','Do not know',42048.37,'South Africa'),
('country','ZA',2009,'continent','AFR','No',47628079,'South Africa'),
('country','ZA',2009,'continent','AFR','Yes',9379813,'South Africa'),
('level1','ZA_1_008',2009,'country','ZA','Unspecified',10936.94,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Do not know',2403.156,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','No',4972568,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Yes',1664353,'Western Cape');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allMedicalAidSchemes','"General Household Survey, 2018"','https://open.africa/dataset/general-household-survey-2018/resource/ff03c7bb-19c2-4f2c-9782-3b4f0f48b213') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allMedicalAidSchemes','"General Household Survey, 2018"','https://open.africa/dataset/general-household-survey-2018/resource/ff03c7bb-19c2-4f2c-9782-3b4f0f48b213') on conflict do nothing;
