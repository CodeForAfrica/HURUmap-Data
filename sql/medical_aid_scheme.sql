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
	name TEXT,
	geo__version NUMERIC
);

INSERT INTO public.medical_aid_scheme VALUES
('level1','ZA_1_003',2009,'country','ZA','Total',6508138,'Eastern Cape',NULL),
('level1','ZA_1_003',2009,'country','ZA','Yes',644722,'Eastern Cape',NULL),
('level1','ZA_1_003',2009,'country','ZA','Do not know',0,'Eastern Cape',NULL),
('level1','ZA_1_003',2009,'country','ZA','No',5814477,'Eastern Cape',NULL),
('level1','ZA_1_003',2009,'country','ZA','Unspecified',48938.96,'Eastern Cape',NULL),
('level1','ZA_1_002',2009,'country','ZA','No',2394066,'Free State',NULL),
('level1','ZA_1_002',2009,'country','ZA','Do not know',1014.212,'Free State',NULL),
('level1','ZA_1_002',2009,'country','ZA','Total',2891248,'Free State',NULL),
('level1','ZA_1_002',2009,'country','ZA','Unspecified',34852.21,'Free State',NULL),
('level1','ZA_1_002',2009,'country','ZA','Yes',461316,'Free State',NULL),
('level1','ZA_1_009',2009,'country','ZA','Do not know',13949.44,'Gauteng',NULL),
('level1','ZA_1_009',2009,'country','ZA','Total',14660744,'Gauteng',NULL),
('level1','ZA_1_009',2009,'country','ZA','Unspecified',159159.6,'Gauteng',NULL),
('level1','ZA_1_009',2009,'country','ZA','Yes',3463385,'Gauteng',NULL),
('level1','ZA_1_009',2009,'country','ZA','No',11024251,'Gauteng',NULL),
('level1','ZA_1_001',2009,'country','ZA','Total',11215218,'KwaZulu-Natal',NULL),
('level1','ZA_1_001',2009,'country','ZA','Unspecified',31558.73,'KwaZulu-Natal',NULL),
('level1','ZA_1_001',2009,'country','ZA','Do not know',12611.01,'KwaZulu-Natal',NULL),
('level1','ZA_1_001',2009,'country','ZA','Yes',1383185,'KwaZulu-Natal',NULL),
('level1','ZA_1_001',2009,'country','ZA','No',9787862,'KwaZulu-Natal',NULL),
('level1','ZA_1_005',2009,'country','ZA','No',5325477,'Limpopo',NULL),
('level1','ZA_1_005',2009,'country','ZA','Yes',473641.5,'Limpopo',NULL),
('level1','ZA_1_005',2009,'country','ZA','Total',5853756,'Limpopo',NULL),
('level1','ZA_1_005',2009,'country','ZA','Do not know',3373.257,'Limpopo',NULL),
('level1','ZA_1_005',2009,'country','ZA','Unspecified',51264.68,'Limpopo',NULL),
('level1','ZA_1_004',2009,'country','ZA','Total',4523433,'Mpumalanga',NULL),
('level1','ZA_1_004',2009,'country','ZA','Do not know',3794.126,'Mpumalanga',NULL),
('level1','ZA_1_004',2009,'country','ZA','No',3927404,'Mpumalanga',NULL),
('level1','ZA_1_004',2009,'country','ZA','Yes',568191.7,'Mpumalanga',NULL),
('level1','ZA_1_004',2009,'country','ZA','Unspecified',24044.02,'Mpumalanga',NULL),
('level1','ZA_1_007',2009,'country','ZA','Do not know',4903.171,'North West',NULL),
('level1','ZA_1_007',2009,'country','ZA','No',3352623,'North West',NULL),
('level1','ZA_1_007',2009,'country','ZA','Yes',523349.8,'North West',NULL),
('level1','ZA_1_007',2009,'country','ZA','Unspecified',44342.5,'North West',NULL),
('level1','ZA_1_007',2009,'country','ZA','Total',3925218,'North West',NULL),
('level1','ZA_1_006',2009,'country','ZA','Do not know',0,'Northern Cape',NULL),
('level1','ZA_1_006',2009,'country','ZA','Total',1229794,'Northern Cape',NULL),
('level1','ZA_1_006',2009,'country','ZA','Unspecified',2772.782,'Northern Cape',NULL),
('level1','ZA_1_006',2009,'country','ZA','Yes',197669.5,'Northern Cape',NULL),
('level1','ZA_1_006',2009,'country','ZA','No',1029352,'Northern Cape',NULL),
('country','ZA',2009,'continent','AFR','Total',57457811,'South Africa',NULL),
('country','ZA',2009,'continent','AFR','Unspecified',407870.5,'South Africa',NULL),
('country','ZA',2009,'continent','AFR','Do not know',42048.37,'South Africa',NULL),
('country','ZA',2009,'continent','AFR','No',47628079,'South Africa',NULL),
('country','ZA',2009,'continent','AFR','Yes',9379813,'South Africa',NULL),
('level1','ZA_1_008',2009,'country','ZA','Unspecified',10936.94,'Western Cape',NULL),
('level1','ZA_1_008',2009,'country','ZA','Do not know',2403.156,'Western Cape',NULL),
('level1','ZA_1_008',2009,'country','ZA','No',4972568,'Western Cape',NULL),
('level1','ZA_1_008',2009,'country','ZA','Total',6650261,'Western Cape',NULL),
('level1','ZA_1_008',2009,'country','ZA','Yes',1664353,'Western Cape',NULL);
      
INSERT into public.sources(geo_level, country_code, pg_table_name, table_name, source_title, source_link) VALUES('level1','ZA','medical_aid_scheme','allMedicalAidSchemes','"General Household Survey, 2018"','https://open.africa/dataset/general-household-survey-2018/resource/ff03c7bb-19c2-4f2c-9782-3b4f0f48b213') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, pg_table_name, table_name, source_title, source_link) VALUES('country','ZA','medical_aid_scheme','allMedicalAidSchemes','"General Household Survey, 2018"','https://open.africa/dataset/general-household-survey-2018/resource/ff03c7bb-19c2-4f2c-9782-3b4f0f48b213') on conflict do nothing;
