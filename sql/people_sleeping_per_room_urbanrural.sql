SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.people_sleeping_per_room_urbanrural DROP CONSTRAINT IF EXISTS pk_people_sleeping_per_room_urbanrural;
DROP TABLE IF EXISTS public.people_sleeping_per_room_urbanrural;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.people_sleeping_per_room_urbanrural (
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

ALTER TABLE ONLY public.people_sleeping_per_room_urbanrural ADD CONSTRAINT pk_people_sleeping_per_room_urbanrural PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.people_sleeping_per_room_urbanrural VALUES
('country','NG',2009,'continent','AFR','7 +','Rural',1.8,'Nigeria'),
('country','NG',2009,'continent','AFR','1-2','Rural',66.5,'Nigeria'),
('country','NG',2009,'continent','AFR','3-4','Rural',25.7,'Nigeria'),
('country','NG',2009,'continent','AFR','5-6','Rural',6,'Nigeria'),
('country','NG',2009,'continent','AFR','1-2','Urban',66,'Nigeria'),
('country','NG',2009,'continent','AFR','5-6','Urban',8.3,'Nigeria'),
('country','NG',2009,'continent','AFR','7 +','Urban',1.6,'Nigeria'),
('country','NG',2009,'continent','AFR','3-4','Urban',24.2,'Nigeria') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','NG','allPeopleSleepingPerRoomUrbanrurals','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/0c516031-0da2-4331-81dc-08f399c7dcc6') ON CONFLICT DO NOTHING;
