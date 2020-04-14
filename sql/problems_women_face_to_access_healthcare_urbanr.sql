SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.problems_women_face_to_access_healthcare_urbanr DROP CONSTRAINT IF EXISTS pk_problems_women_face_to_access_healthcare_urbanr;
DROP TABLE IF EXISTS public.problems_women_face_to_access_healthcare_urbanr;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.problems_women_face_to_access_healthcare_urbanr (
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

ALTER TABLE ONLY public.problems_women_face_to_access_healthcare_urbanr ADD CONSTRAINT pk_problems_women_face_to_access_healthcare_urbanr PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.problems_women_face_to_access_healthcare_urbanr VALUES
('country','NG',2009,'continent','AFR','Getting permission to go for treatment','Urban',8.3,'Nigeria'),
('country','NG',2009,'continent','AFR','Getting permission to go for treatment','Rural',14,'Nigeria'),
('country','NG',2009,'continent','AFR','Getting money for treatment','Urban',37.2,'Nigeria'),
('country','NG',2009,'continent','AFR','Getting money for treatment','Rural',53.1,'Nigeria'),
('country','NG',2009,'continent','AFR','Distance to health facility','Urban',16.8,'Nigeria'),
('country','NG',2009,'continent','AFR','Distance to health facility','Rural',33.2,'Nigeria'),
('country','NG',2009,'continent','AFR','Not wanting to go alone','Urban',10.9,'Nigeria'),
('country','NG',2009,'continent','AFR','Not wanting to go alone','Rural',20.5,'Nigeria'),
('country','NG',2009,'continent','AFR','Any of the specified problems','Urban',42.1,'Nigeria'),
('country','NG',2009,'continent','AFR','Any of the specified problems','Rural',59.5,'Nigeria') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','NG','allProblemsWomenFaceToAccessHealthcareUrbanrs','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/bc821451-4325-4145-bb42-87a45359d03c') ON CONFLICT DO NOTHING;
