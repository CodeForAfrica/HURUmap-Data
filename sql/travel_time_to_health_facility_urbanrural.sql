SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.travel_time_to_health_facility_urbanrural DROP CONSTRAINT IF EXISTS pk_travel_time_to_health_facility_urbanrural;
DROP TABLE IF EXISTS public.travel_time_to_health_facility_urbanrural;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.travel_time_to_health_facility_urbanrural (
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

INSERT INTO public.travel_time_to_health_facility_urbanrural VALUES
('country','GH',2009,'continent','AFR','151-180','Urban',1.4,'Ghana'),
('country','GH',2009,'continent','AFR','91-120','Urban',3.4,'Ghana'),
('country','GH',2009,'continent','AFR','<30','Urban',39.1,'Ghana'),
('country','GH',2009,'continent','AFR','61-90','Urban',6.7,'Ghana'),
('country','GH',2009,'continent','AFR','30-60','Urban',45,'Ghana'),
('country','GH',2009,'continent','AFR','121-150','Urban',1.1,'Ghana'),
('country','GH',2009,'continent','AFR','181+','Urban',3.4,'Ghana'),
('country','GH',2009,'continent','AFR','91-120','Rural',7,'Ghana'),
('country','GH',2009,'continent','AFR','151-180','Rural',1.6,'Ghana'),
('country','GH',2009,'continent','AFR','<30','Rural',39.6,'Ghana'),
('country','GH',2009,'continent','AFR','61-90','Rural',7.8,'Ghana'),
('country','GH',2009,'continent','AFR','121-150','Rural',1.4,'Ghana'),
('country','GH',2009,'continent','AFR','30-60','Rural',38.4,'Ghana'),
('country','GH',2009,'continent','AFR','181+','Rural',4.3,'Ghana');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','GH','allTravelTimeToHealthFacilityUrbanrurals','"Ghana Living Standards Survey (GLSS 7), 2017"','https://open.africa/dataset/ghana-living-standards-survey-glss-7-2017/resource/3946b512-fff0-4851-929f-02c0a91627f5') on conflict do nothing;

ALTER TABLE ONLY public.travel_time_to_health_facility_urbanrural ADD CONSTRAINT pk_travel_time_to_health_facility_urbanrural PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);
