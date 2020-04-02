SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.visit_health_facility_nearest_to_dwelling DROP CONSTRAINT IF EXISTS pk_visit_health_facility_nearest_to_dwelling;
DROP TABLE IF EXISTS public.visit_health_facility_nearest_to_dwelling;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.visit_health_facility_nearest_to_dwelling (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.visit_health_facility_nearest_to_dwelling VALUES
('level1','ZA_1_003',2009,'country','ZA','No',264037.84,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Yes',6244099.69,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','No',216033.48,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Yes',2675214.6,'Free State'),
('level1','ZA_1_009',2009,'country','ZA','Yes',13533853.73,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','No',1126890.77,'Gauteng'),
('level1','ZA_1_001',2009,'country','ZA','No',355578.11,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Yes',10859639.48,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','No',230456.55,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Yes',5623299.54,'Limpopo'),
('level1','ZA_1_004',2009,'country','ZA','No',191967.01,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Yes',4331466.47,'Mpumalanga'),
('level1','ZA_1_007',2009,'country','ZA','No',424599.86,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Yes',3500618.47,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Yes',1133960.57,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','No',95833.83,'Northern Cape'),
('country','ZA',2009,'continent','AFR','No',3756597.71,'South Africa'),
('country','ZA',2009,'continent','AFR','Yes',53701213.3,'South Africa'),
('level1','ZA_1_008',2009,'country','ZA','No',851200.25,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Yes',5799060.76,'Western Cape');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allVisitHealthFacilityNearestToDwellings','"General Household Survey, 2018"','https://open.africa/dataset/general-household-survey-2018/resource/e464b246-3812-4d2e-90bd-10fb8898e5d5') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allVisitHealthFacilityNearestToDwellings','"General Household Survey, 2018"','https://open.africa/dataset/general-household-survey-2018/resource/e464b246-3812-4d2e-90bd-10fb8898e5d5') on conflict do nothing;
