SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.type_of_toilet_facility_urbanrural DROP CONSTRAINT IF EXISTS pk_type_of_toilet_facility_urbanrural;
DROP TABLE IF EXISTS public.type_of_toilet_facility_urbanrural;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.type_of_toilet_facility_urbanrural (
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

ALTER TABLE ONLY public.type_of_toilet_facility_urbanrural ADD CONSTRAINT pk_type_of_toilet_facility_urbanrural PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.type_of_toilet_facility_urbanrural VALUES
('country','NG',2009,'continent','AFR','Composting toilet','Rural',0.1,'Nigeria'),
('country','NG',2009,'continent','AFR','Shared ventilated improved pit latrine (VIP)','Rural',1.6,'Nigeria'),
('country','NG',2009,'continent','AFR','Other types of toilet facility','Rural',0,'Nigeria'),
('country','NG',2009,'continent','AFR','Pit latrine with a slab','Rural',17,'Nigeria'),
('country','NG',2009,'continent','AFR','Open defecation','Rural',29.9,'Nigeria'),
('country','NG',2009,'continent','AFR','Shared flush or pour flush toilets to piper sewer systems','Rural',0.2,'Nigeria'),
('country','NG',2009,'continent','AFR','Flush or pour flush toilet not to a sewer, septic tank or pit latrine','Rural',0.5,'Nigeria'),
('country','NG',2009,'continent','AFR','Shared flush or pour flush toilets to septic tank','Rural',1.2,'Nigeria'),
('country','NG',2009,'continent','AFR','Shared composting toilet','Rural',0,'Nigeria'),
('country','NG',2009,'continent','AFR','Hanging toilet or hanging latrine','Rural',0.4,'Nigeria'),
('country','NG',2009,'continent','AFR','Flush or pour flush toilet to a pit latrine','Rural',2.5,'Nigeria'),
('country','NG',2009,'continent','AFR','Bucket toilet','Rural',0.1,'Nigeria'),
('country','NG',2009,'continent','AFR','Shared pit latrine with a slab','Rural',6.4,'Nigeria'),
('country','NG',2009,'continent','AFR','Flush or pour flush toilet to a septic tank','Rural',3.7,'Nigeria'),
('country','NG',2009,'continent','AFR','Flush or pour flush toilet to a piped sewer system','Rural',1.2,'Nigeria'),
('country','NG',2009,'continent','AFR','Pit latrine without a slab or an open pit','Rural',31.2,'Nigeria'),
('country','NG',2009,'continent','AFR','Shared flush or pour flush toilets to a pit latrine','Rural',1.8,'Nigeria'),
('country','NG',2009,'continent','AFR','Ventilated improved pit latrine (VIP)','Rural',2.1,'Nigeria'),
('country','NG',2009,'continent','AFR','Ventilated improved pit latrine (VIP)','Urban',1.6,'Nigeria'),
('country','NG',2009,'continent','AFR','Hanging toilet or hanging latrine','Urban',1.4,'Nigeria'),
('country','NG',2009,'continent','AFR','Flush or pour flush toilet to a pit latrine','Urban',5.8,'Nigeria'),
('country','NG',2009,'continent','AFR','Pit latrine without a slab or an open pit','Urban',9.4,'Nigeria'),
('country','NG',2009,'continent','AFR','Flush or pour flush toilet to a septic tank','Urban',16.9,'Nigeria'),
('country','NG',2009,'continent','AFR','Bucket toilet','Urban',0.2,'Nigeria'),
('country','NG',2009,'continent','AFR','Flush or pour flush toilet to a piped sewer system','Urban',4.6,'Nigeria'),
('country','NG',2009,'continent','AFR','Flush or pour flush toilet not to a sewer, septic tank or pit latrine','Urban',1.6,'Nigeria'),
('country','NG',2009,'continent','AFR','Other types of toilet facility','Urban',0.1,'Nigeria'),
('country','NG',2009,'continent','AFR','Shared flush or pour flush toilets to septic tank','Urban',7.2,'Nigeria'),
('country','NG',2009,'continent','AFR','Shared flush or pour flush toilets to a pit latrine','Urban',7,'Nigeria'),
('country','NG',2009,'continent','AFR','Open defecation','Urban',13.7,'Nigeria'),
('country','NG',2009,'continent','AFR','Shared pit latrine with a slab','Urban',12,'Nigeria'),
('country','NG',2009,'continent','AFR','Pit latrine with a slab','Urban',15.2,'Nigeria'),
('country','NG',2009,'continent','AFR','Shared ventilated improved pit latrine (VIP)','Urban',1.9,'Nigeria'),
('country','NG',2009,'continent','AFR','Shared composting toilet','Urban',0.1,'Nigeria'),
('country','NG',2009,'continent','AFR','Composting toilet','Urban',0,'Nigeria'),
('country','NG',2009,'continent','AFR','Shared flush or pour flush toilets to piper sewer systems','Urban',1.4,'Nigeria') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','NG','allTypeOfToiletFacilityUrbanrurals','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/c57546ee-d175-4efd-95e3-5fdd53a0e996') ON CONFLICT DO NOTHING;
