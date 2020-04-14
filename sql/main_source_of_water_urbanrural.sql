SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.main_source_of_water_urbanrural DROP CONSTRAINT IF EXISTS pk_main_source_of_water_urbanrural;
DROP TABLE IF EXISTS public.main_source_of_water_urbanrural;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.main_source_of_water_urbanrural (
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

ALTER TABLE ONLY public.main_source_of_water_urbanrural ADD CONSTRAINT pk_main_source_of_water_urbanrural PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.main_source_of_water_urbanrural VALUES
('country','NG',2009,'continent','AFR','Public tap/standpipe','Rural',7.5,'Nigeria'),
('country','NG',2009,'continent','AFR','Unimproved bottled water','Rural',0,'Nigeria'),
('country','NG',2009,'continent','AFR','Tubewell/borehole','Rural',33.1,'Nigeria'),
('country','NG',2009,'continent','AFR','Other water source','Rural',0.1,'Nigeria'),
('country','NG',2009,'continent','AFR','Water piped to neighbor','Rural',0.4,'Nigeria'),
('country','NG',2009,'continent','AFR','Water piped into yard/plot','Rural',1.2,'Nigeria'),
('country','NG',2009,'continent','AFR','Water piped into dwelling','Rural',0.6,'Nigeria'),
('country','NG',2009,'continent','AFR','Surface water','Rural',13.3,'Nigeria'),
('country','NG',2009,'continent','AFR','Protected well','Rural',10.8,'Nigeria'),
('country','NG',2009,'continent','AFR','Cart with tank','Rural',1.3,'Nigeria'),
('country','NG',2009,'continent','AFR','Tanker truck','Rural',0.4,'Nigeria'),
('country','NG',2009,'continent','AFR','Unprotected well water','Rural',25.9,'Nigeria'),
('country','NG',2009,'continent','AFR','Protected spring','Rural',0.4,'Nigeria'),
('country','NG',2009,'continent','AFR','Sachet water','Rural',1.4,'Nigeria'),
('country','NG',2009,'continent','AFR','Rainwater','Rural',1.4,'Nigeria'),
('country','NG',2009,'continent','AFR','Bottled water/demi john','Rural',0.1,'Nigeria'),
('country','NG',2009,'continent','AFR','Unprotected spring','Rural',2.2,'Nigeria'),
('country','NG',2009,'continent','AFR','Rainwater','Urban',2.2,'Nigeria'),
('country','NG',2009,'continent','AFR','Tanker truck','Urban',1.3,'Nigeria'),
('country','NG',2009,'continent','AFR','Unprotected well water','Urban',4.4,'Nigeria'),
('country','NG',2009,'continent','AFR','Public tap/standpipe','Urban',7.4,'Nigeria'),
('country','NG',2009,'continent','AFR','Surface water','Urban',3.6,'Nigeria'),
('country','NG',2009,'continent','AFR','Tubewell/borehole','Urban',41.1,'Nigeria'),
('country','NG',2009,'continent','AFR','Sachet water','Urban',14.8,'Nigeria'),
('country','NG',2009,'continent','AFR','Unimproved bottled water','Urban',0,'Nigeria'),
('country','NG',2009,'continent','AFR','Other water source','Urban',0.2,'Nigeria'),
('country','NG',2009,'continent','AFR','Protected well','Urban',11.5,'Nigeria'),
('country','NG',2009,'continent','AFR','Unprotected spring','Urban',0.9,'Nigeria'),
('country','NG',2009,'continent','AFR','Bottled water/demi john','Urban',0.9,'Nigeria'),
('country','NG',2009,'continent','AFR','Protected spring','Urban',0.6,'Nigeria'),
('country','NG',2009,'continent','AFR','Water piped into dwelling','Urban',3.6,'Nigeria'),
('country','NG',2009,'continent','AFR','Cart with tank','Urban',4.2,'Nigeria'),
('country','NG',2009,'continent','AFR','Water piped into yard/plot','Urban',2.2,'Nigeria'),
('country','NG',2009,'continent','AFR','Water piped to neighbor','Urban',1.1,'Nigeria') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','NG','allMainSourceOfWaterUrbanrurals','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/5d566ac3-5b8f-4b5c-9829-54d70781c9b7') ON CONFLICT DO NOTHING;
