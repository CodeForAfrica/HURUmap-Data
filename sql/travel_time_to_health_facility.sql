SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.travel_time_to_health_facility DROP CONSTRAINT IF EXISTS pk_travel_time_to_health_facility;
DROP TABLE IF EXISTS public.travel_time_to_health_facility;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.travel_time_to_health_facility (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.travel_time_to_health_facility VALUES
('level1','ZA_1_003',2009,'country','ZA','15-29 minutes',3006210.7,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Less than 15 minutes',2015752.23,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','30-89 minutes',1264924.91,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','90 minutes and more',186782.2,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Unspecified',34467.49,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Do not know',0,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','90 minutes and more',47953.88,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','15-29 minutes',1300900.97,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','30-89 minutes',378374.86,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Do not know',0,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Unspecified',43148.15,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Less than 15 minutes',1120870.22,'Free State'),
('level1','ZA_1_009',2009,'country','ZA','Do not know',17982.83,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','90 minutes and more',52970.17,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','15-29 minutes',5222047.98,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Less than 15 minutes',8257819.08,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','30-89 minutes',879395.75,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Unspecified',230528.68,'Gauteng'),
('level1','ZA_1_001',2009,'country','ZA','30-89 minutes',2793973.18,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Do not know',1495.29,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Unspecified',37224.56,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','90 minutes and more',259141.08,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','15-29 minutes',5145046.7,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Less than 15 minutes',2978336.79,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','30-89 minutes',1093236.84,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','90 minutes and more',98325.04,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Do not know',3280.12,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Less than 15 minutes',1269135.04,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','15-29 minutes',3332582.24,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Unspecified',57196.82,'Limpopo'),
('level1','ZA_1_004',2009,'country','ZA','15-29 minutes',1951326.02,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Unspecified',18498.25,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Do not know',4156.93,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','90 minutes and more',51791.65,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','30-89 minutes',948026.64,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Less than 15 minutes',1549634,'Mpumalanga'),
('level1','ZA_1_007',2009,'country','ZA','Less than 15 minutes',1263093.64,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Do not know',21587.49,'North West'),
('level1','ZA_1_007',2009,'country','ZA','30-89 minutes',798758.63,'North West'),
('level1','ZA_1_007',2009,'country','ZA','15-29 minutes',1697927.26,'North West'),
('level1','ZA_1_007',2009,'country','ZA','90 minutes and more',113576.51,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Unspecified',30274.8,'North West'),
('level1','ZA_1_006',2009,'country','ZA','15-29 minutes',503550.82,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','30-89 minutes',179084.33,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','90 minutes and more',10573.06,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Unspecified',2643.91,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Less than 15 minutes',533942.28,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Do not know',0,'Northern Cape'),
('country','ZA',2009,'continent','AFR','Unspecified',487590.75,'South Africa'),
('country','ZA',2009,'continent','AFR','Do not know',51055.66,'South Africa'),
('country','ZA',2009,'continent','AFR','90 minutes and more',834502.35,'South Africa'),
('country','ZA',2009,'continent','AFR','30-89 minutes',8735875.3,'South Africa'),
('country','ZA',2009,'continent','AFR','15-29 minutes',24154188.32,'South Africa'),
('country','ZA',2009,'continent','AFR','Less than 15 minutes',23194598.63,'South Africa'),
('level1','ZA_1_008',2009,'country','ZA','Do not know',2553,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','90 minutes and more',13388.75,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','30-89 minutes',400100.17,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','15-29 minutes',1994595.63,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Unspecified',33608.1,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Less than 15 minutes',4206015.36,'Western Cape');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allTravelTimeToHealthFacilities','"General Household Survey, 2018"','https://open.africa/dataset/general-household-survey-2018/resource/7960887d-2c72-4119-a97e-5e9967dd1246') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allTravelTimeToHealthFacilities','"General Household Survey, 2018"','https://open.africa/dataset/general-household-survey-2018/resource/7960887d-2c72-4119-a97e-5e9967dd1246') on conflict do nothing;

ALTER TABLE ONLY public.travel_time_to_health_facility ADD CONSTRAINT pk_travel_time_to_health_facility PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);
