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

INSERT INTO public.handwashing_type_urbanrural VALUES
('country','ZA',2009,'continent','AFR','Soap and water','Non-urban',34.5,'South Africa'),
('country','ZA',2009,'continent','AFR','Water and cleansing agent other than soap only','Non-urban',0.7,'South Africa'),
('country','ZA',2009,'continent','AFR','Water only','Non-urban',37.7,'South Africa'),
('country','ZA',2009,'continent','AFR','Soap but no water','Non-urban',1.3,'South Africa'),
('country','ZA',2009,'continent','AFR','Cleansing agent other than soap only','Non-urban',0,'South Africa'),
('country','ZA',2009,'continent','AFR','"No water, no soap, no other cleansing agent"','Non-urban',25.8,'South Africa'),
('country','ZA',2009,'continent','AFR','Soap and water','Urban',57,'South Africa'),
('country','ZA',2009,'continent','AFR','Water and cleansing agent other than soap only','Urban',1.1,'South Africa'),
('country','ZA',2009,'continent','AFR','Water only','Urban',31.8,'South Africa'),
('country','ZA',2009,'continent','AFR','Soap but no water','Urban',1.3,'South Africa'),
('country','ZA',2009,'continent','AFR','Cleansing agent other than soap only','Urban',0,'South Africa'),
('country','ZA',2009,'continent','AFR','"No water, no soap, no other cleansing agent"','Urban',8.8,'South Africa');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allHandwashingTypeUrbanrurals','"Demographic and Health Survey, 2016"','https://open.africa/dataset/demographic-and-health-survey-2016-south-africa/resource/46c842f7-c507-4c4f-b5ca-cdb07355f438') on conflict do nothing;

ALTER TABLE ONLY public.handwashing_type_urbanrural ADD CONSTRAINT pk_handwashing_type_urbanrural PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);
