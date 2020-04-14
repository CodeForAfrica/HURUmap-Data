SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.health_insurance_provider_urbanrural DROP CONSTRAINT IF EXISTS pk_health_insurance_provider_urbanrural;
DROP TABLE IF EXISTS public.health_insurance_provider_urbanrural;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.health_insurance_provider_urbanrural (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable_3 TEXT,
	variable_2 TEXT,
	variable_1 TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.health_insurance_provider_urbanrural ADD CONSTRAINT pk_health_insurance_provider_urbanrural PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_3, variable_2, variable_1, value, name);

INSERT INTO public.health_insurance_provider_urbanrural VALUES
('country','NG',2009,'continent','AFR','Social security health insurance','Female','Rural',0,'Nigeria'),
('country','NG',2009,'continent','AFR','Other employer-base health insurance','Female','Rural',0.6,'Nigeria'),
('country','NG',2009,'continent','AFR','Other health insurance','Female','Rural',0,'Nigeria'),
('country','NG',2009,'continent','AFR','Mutual health organzation or community-base health insurance','Female','Rural',0.5,'Nigeria'),
('country','NG',2009,'continent','AFR','Privately purchased commercial insurance','Female','Rural',0.2,'Nigeria'),
('country','NG',2009,'continent','AFR','No health insurance','Female','Rural',98.6,'Nigeria'),
('country','NG',2009,'continent','AFR','Social security health insurance','Female','Urban',0,'Nigeria'),
('country','NG',2009,'continent','AFR','Privately purchased commercial insurance','Female','Urban',0.2,'Nigeria'),
('country','NG',2009,'continent','AFR','Other employer-base health insurance','Female','Urban',3.5,'Nigeria'),
('country','NG',2009,'continent','AFR','Mutual health organzation or community-base health insurance','Female','Urban',0.4,'Nigeria'),
('country','NG',2009,'continent','AFR','Other health insurance','Female','Urban',0.1,'Nigeria'),
('country','NG',2009,'continent','AFR','No health insurance','Female','Urban',95.8,'Nigeria'),
('country','NG',2009,'continent','AFR','Social security health insurance','Male','Rural',0,'Nigeria'),
('country','NG',2009,'continent','AFR','Other employer-base health insurance','Male','Rural',1.3,'Nigeria'),
('country','NG',2009,'continent','AFR','Other health insurance','Male','Rural',0.1,'Nigeria'),
('country','NG',2009,'continent','AFR','Mutual health organzation or community-base health insurance','Male','Rural',0.1,'Nigeria'),
('country','NG',2009,'continent','AFR','Privately purchased commercial insurance','Male','Rural',0.1,'Nigeria'),
('country','NG',2009,'continent','AFR','No health insurance','Male','Rural',98.6,'Nigeria'),
('country','NG',2009,'continent','AFR','Social security health insurance','Male','Urban',0,'Nigeria'),
('country','NG',2009,'continent','AFR','Privately purchased commercial insurance','Male','Urban',0.1,'Nigeria'),
('country','NG',2009,'continent','AFR','Other employer-base health insurance','Male','Urban',4.3,'Nigeria'),
('country','NG',2009,'continent','AFR','Mutual health organzation or community-base health insurance','Male','Urban',0.3,'Nigeria'),
('country','NG',2009,'continent','AFR','Other health insurance','Male','Urban',0.2,'Nigeria'),
('country','NG',2009,'continent','AFR','No health insurance','Male','Urban',95.2,'Nigeria') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','NG','allHealthInsuranceProviderUrbanrurals','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/81647247-56b8-4a36-ad9f-ba063a4c7cbc') ON CONFLICT DO NOTHING;
