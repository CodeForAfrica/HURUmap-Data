SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.handwashing_type DROP CONSTRAINT IF EXISTS pk_handwashing_type;
DROP TABLE IF EXISTS public.handwashing_type;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.handwashing_type (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.handwashing_type VALUES
('level1','ZA_1_003',2009,'country','ZA','Soap and water',45.4,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Water only',36.3,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Soap but no water',0.6,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Cleansing agent other than soap only',0,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','"No water, no soap, no other cleansing agent"',17,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Water and cleansing agent other than soap only',0.7,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Water and cleansing agent other than soap only',0.3,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Water only',47.9,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Soap and water',38.1,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','"No water, no soap, no other cleansing agent"',12.7,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Cleansing agent other than soap only',0,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Soap but no water',0.9,'Free State'),
('level1','ZA_1_009',2009,'country','ZA','Water and cleansing agent other than soap only',2,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Soap but no water',1.6,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Water only',36.3,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','"No water, no soap, no other cleansing agent"',10.9,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Soap and water',49.2,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Cleansing agent other than soap only',0,'Gauteng'),
('level1','ZA_1_001',2009,'country','ZA','Soap but no water',1.8,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','"No water, no soap, no other cleansing agent"',16.8,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Cleansing agent other than soap only',0,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Soap and water',49.3,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Water and cleansing agent other than soap only',1.4,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Water only',30.7,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Water only',31.4,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Soap but no water',1.5,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','"No water, no soap, no other cleansing agent"',19.9,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Cleansing agent other than soap only',0,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Water and cleansing agent other than soap only',0.1,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Soap and water',47,'Limpopo'),
('level1','ZA_1_004',2009,'country','ZA','Cleansing agent other than soap only',0,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Water and cleansing agent other than soap only',0.1,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Soap but no water',1.8,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Water only',39.4,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','"No water, no soap, no other cleansing agent"',23.5,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Soap and water',35.2,'Mpumalanga'),
('level1','ZA_1_007',2009,'country','ZA','Water only',45.7,'North West'),
('level1','ZA_1_007',2009,'country','ZA','"No water, no soap, no other cleansing agent"',17.1,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Cleansing agent other than soap only',0.1,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Soap but no water',1.4,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Water and cleansing agent other than soap only',0.1,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Soap and water',35.5,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Soap and water',54.2,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Water and cleansing agent other than soap only',0.6,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','"No water, no soap, no other cleansing agent"',10.6,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Soap but no water',1.2,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Water only',33.5,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Cleansing agent other than soap only',0,'Northern Cape'),
('country','ZA',2009,'continent','AFR','Water only',34.8,'South Africa'),
('country','ZA',2009,'continent','AFR','"No water, no soap, no other cleansing agent"',14.4,'South Africa'),
('country','ZA',2009,'continent','AFR','Soap but no water',1.2,'South Africa'),
('country','ZA',2009,'continent','AFR','Water and cleansing agent other than soap only',0.7,'South Africa'),
('country','ZA',2009,'continent','AFR','Soap and water',48.9,'South Africa'),
('country','ZA',2009,'continent','AFR','Cleansing agent other than soap only',0,'South Africa'),
('level1','ZA_1_008',2009,'country','ZA','"No water, no soap, no other cleansing agent"',0.8,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Cleansing agent other than soap only',0,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Soap but no water',0,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Water only',12,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Water and cleansing agent other than soap only',1,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Soap and water',86.1,'Western Cape');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allHandwashingTypes','"Demographic and Health Survey, 2016"','https://open.africa/dataset/demographic-and-health-survey-2016-south-africa/resource/46c842f7-c507-4c4f-b5ca-cdb07355f438') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allHandwashingTypes','"Demographic and Health Survey, 2016"','https://open.africa/dataset/demographic-and-health-survey-2016-south-africa/resource/46c842f7-c507-4c4f-b5ca-cdb07355f438') on conflict do nothing;

ALTER TABLE ONLY public.handwashing_type ADD CONSTRAINT pk_handwashing_type PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);
