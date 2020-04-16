SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.handwashing_type_urbanrural DROP CONSTRAINT IF EXISTS pk_handwashing_type_urbanrural;
DROP TABLE IF EXISTS public.handwashing_type_urbanrural;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.handwashing_type_urbanrural (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable_2 TEXT,
	variable_1 TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.handwashing_type_urbanrural ADD CONSTRAINT pk_handwashing_type_urbanrural PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.handwashing_type_urbanrural VALUES
('country','GH',2009,'continent','AFR','Ash/mud/ sand available','Rural',2.3,'Ghana'),
('country','GH',2009,'continent','AFR','Soap available','Rural',82.9,'Ghana'),
('country','GH',2009,'continent','AFR','Water and soap available','Rural',41.8,'Ghana'),
('country','GH',2009,'continent','AFR','Water available','Rural',69.4,'Ghana'),
('country','GH',2009,'continent','AFR','Ash/mud/ sand available','Urban',0.2,'Ghana'),
('country','GH',2009,'continent','AFR','Soap available','Urban',89,'Ghana'),
('country','GH',2009,'continent','AFR','Water and soap available','Urban',56.3,'Ghana'),
('country','GH',2009,'continent','AFR','Water available','Urban',80.2,'Ghana'),
('country','NG',2009,'continent','AFR','Soap and water','Rural',26.6,'Nigeria'),
('country','NG',2009,'continent','AFR','Water and a cleansing agent other than soap only','Rural',0.7,'Nigeria'),
('country','NG',2009,'continent','AFR','Cleansing agent other than soap only','Rural',0.3,'Nigeria'),
('country','NG',2009,'continent','AFR','Water only','Rural',29.4,'Nigeria'),
('country','NG',2009,'continent','AFR','Soap but no water','Rural',2,'Nigeria'),
('country','NG',2009,'continent','AFR','No water, no soap, and no other cleansing agent','Rural',41,'Nigeria'),
('country','NG',2009,'continent','AFR','Soap and water','Urban',49.9,'Nigeria'),
('country','NG',2009,'continent','AFR','Soap but no water','Urban',2.3,'Nigeria'),
('country','NG',2009,'continent','AFR','Water and a cleansing agent other than soap only','Urban',0.7,'Nigeria'),
('country','NG',2009,'continent','AFR','Water only','Urban',24,'Nigeria'),
('country','NG',2009,'continent','AFR','Cleansing agent other than soap only','Urban',0.7,'Nigeria'),
('country','NG',2009,'continent','AFR','No water, no soap, and no other cleansing agent','Urban',22.3,'Nigeria'),
('country','ZA',2009,'continent','AFR','Soap and water','Non-urban',34.5,'South Africa'),
('country','ZA',2009,'continent','AFR','Water and cleansing agent other than soap only','Non-urban',0.7,'South Africa'),
('country','ZA',2009,'continent','AFR','Water only','Non-urban',37.7,'South Africa'),
('country','ZA',2009,'continent','AFR','Soap but no water','Non-urban',1.3,'South Africa'),
('country','ZA',2009,'continent','AFR','Cleansing agent other than soap only','Non-urban',0,'South Africa'),
('country','ZA',2009,'continent','AFR','No water, no soap, no other cleansing agent','Non-urban',25.8,'South Africa'),
('country','ZA',2009,'continent','AFR','Soap and water','Urban',57,'South Africa'),
('country','ZA',2009,'continent','AFR','Water and cleansing agent other than soap only','Urban',1.1,'South Africa'),
('country','ZA',2009,'continent','AFR','Water only','Urban',31.8,'South Africa'),
('country','ZA',2009,'continent','AFR','Soap but no water','Urban',1.3,'South Africa'),
('country','ZA',2009,'continent','AFR','Cleansing agent other than soap only','Urban',0,'South Africa'),
('country','ZA',2009,'continent','AFR','No water, no soap, no other cleansing agent','Urban',8.8,'South Africa') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','GH','allHandwashingTypeUrbanrurals','"Ghana Multiple Indicator Cluster Survey, 2018"','https://open.africa/dataset/ghana-multiple-indicator-cluster-survey/resource/3c4b01d5-f3ab-45a0-a6a5-c4d0409f4551') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','NG','allHandwashingTypeUrbanrurals','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/7d6a6702-a1ba-4d26-a0eb-54dcf5248c6f') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allHandwashingTypeUrbanrurals','"Demographic and Health Survey, 2016"','https://open.africa/dataset/demographic-and-health-survey-2016-south-africa/resource/46c842f7-c507-4c4f-b5ca-cdb07355f438') ON CONFLICT DO NOTHING;
