SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.reason_for_not_using_nearest_facility DROP CONSTRAINT IF EXISTS pk_reason_for_not_using_nearest_facility;
DROP TABLE IF EXISTS public.reason_for_not_using_nearest_facility;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.reason_for_not_using_nearest_facility (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.reason_for_not_using_nearest_facility ADD CONSTRAINT pk_reason_for_not_using_nearest_facility PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.reason_for_not_using_nearest_facility VALUES
('level1','ZA_1_002',2009,'country','ZA','Unspecified',33867.6,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Prefer to use a state/provincial health institution',14580.02,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Not on medical aid scheme list of facilities',10906.21,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Incorrect diagnosis',2959.05,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Staff rude or uncaring or turned patient away',22659.03,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Drugs that were needed; not available',38376.27,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Prefer to use a private health institution',65287.47,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Too expensive',0,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Opening times not convenient',24952.96,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Long waiting time',41188.34,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Not applicable',6244099.69,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Other',9260.89,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Facilities not clean',0,'Eastern Cape'),
('level1','ZA_1_004',2009,'country','ZA','Facilities not clean',0,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Not applicable',2675214.6,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Staff rude or uncaring or turned patient away',9564.93,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Too expensive',0,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Opening times not convenient',1674.46,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Other',17919.75,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Prefer to use a state/provincial health institution',29828.57,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Unspecified',13090.2,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Not on medical aid scheme list of facilities',13317.15,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Prefer to use a private health institution',68528.74,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Drugs that were needed; not available',9545.38,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Incorrect diagnosis',2237.69,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Long waiting time',50326.62,'Free State'),
('level1','ZA_1_007',2009,'country','ZA','Too expensive',59500.98,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Facilities not clean',24460.77,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Incorrect diagnosis',7814.24,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Unspecified',153472.14,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Opening times not convenient',17128.68,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Prefer to use a state/provincial health institution',76183.58,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Prefer to use a private health institution',400308.33,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Not applicable',13533853.73,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Staff rude or uncaring or turned patient away',32450.44,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Long waiting time',122379.61,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Not on medical aid scheme list of facilities',19496.11,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Other',185444.78,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Drugs that were needed; not available',28251.11,'Gauteng'),
('level1','ZA_1_005',2009,'country','ZA','Facilities not clean',1557.52,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Drugs that were needed; not available',22048.17,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Other',49261.75,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Incorrect diagnosis',9065.96,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Prefer to use a private health institution',140772.59,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Prefer to use a state/provincial health institution',12674.94,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Too expensive',12036.78,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Not applicable',10859639.48,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Opening times not convenient',8696.07,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Unspecified',49920.05,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Not on medical aid scheme list of facilities',2817.68,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Long waiting time',42169.9,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Staff rude or uncaring or turned patient away',4556.71,'KwaZulu-Natal'),
('level1','ZA_1_009',2009,'country','ZA','Incorrect diagnosis',0,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Staff rude or uncaring or turned patient away',22648.96,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Unspecified',59964.7,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Prefer to use a state/provincial health institution',12603.5,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Not applicable',5623299.54,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Drugs that were needed; not available',35724.21,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Other',7530.03,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Not on medical aid scheme list of facilities',1977.82,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Too expensive',804.82,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Long waiting time',39494.84,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Prefer to use a private health institution',41951.77,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Facilities not clean',0,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Opening times not convenient',7755.9,'Limpopo'),
('level1','ZA_1_008',2009,'country','ZA','Not applicable',4331466.47,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Not on medical aid scheme list of facilities',2665.66,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Other',28484.43,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Long waiting time',13007.02,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Prefer to use a private health institution',63502.98,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Incorrect diagnosis',2689.59,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Prefer to use a state/provincial health institution',11581.8,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Facilities not clean',0,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Too expensive',25407.5,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Drugs that were needed; not available',16336.48,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Staff rude or uncaring or turned patient away',12381.24,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Opening times not convenient',1288.41,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Unspecified',14621.89,'Mpumalanga'),
('level1','ZA_1_006',2009,'country','ZA','Prefer to use a private health institution',227472.36,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Prefer to use a state/provincial health institution',37696.55,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Other',17830.36,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Not on medical aid scheme list of facilities',1805.6,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Facilities not clean',0,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Long waiting time',55573.11,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Unspecified',18353.81,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Opening times not convenient',8923.67,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Drugs that were needed; not available',38341.79,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Too expensive',1416.13,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Not applicable',3500618.47,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Incorrect diagnosis',0,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Staff rude or uncaring or turned patient away',17186.48,'North West'),
('level1','ZA_1_003',2009,'country','ZA','Facilities not clean',0,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Other',6801.51,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Prefer to use a state/provincial health institution',1615.44,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Long waiting time',30787.21,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Not on medical aid scheme list of facilities',550.87,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Opening times not convenient',2607.83,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Incorrect diagnosis',0,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Too expensive',0,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Not applicable',1133960.57,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Prefer to use a private health institution',40310.06,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Drugs that were needed; not available',2024.79,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Unspecified',7779.59,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Staff rude or uncaring or turned patient away',3356.54,'Northern Cape'),
('country','ZA',2009,'continent','AFR','Not applicable',53701213.3,'South Africa'),
('country','ZA',2009,'continent','AFR','Other',426677.16,'South Africa'),
('country','ZA',2009,'continent','AFR','Unspecified',393129.04,'South Africa'),
('country','ZA',2009,'continent','AFR','Prefer to use a private health institution',1492930.42,'South Africa'),
('country','ZA',2009,'continent','AFR','Facilities not clean',29060.33,'South Africa'),
('country','ZA',2009,'continent','AFR','Long waiting time',546383.33,'South Africa'),
('country','ZA',2009,'continent','AFR','Opening times not convenient',81323.4,'South Africa'),
('country','ZA',2009,'continent','AFR','Too expensive',138333.21,'South Africa'),
('country','ZA',2009,'continent','AFR','Staff rude or uncaring or turned patient away',135720.39,'South Africa'),
('country','ZA',2009,'continent','AFR','Incorrect diagnosis',24766.54,'South Africa'),
('country','ZA',2009,'continent','AFR','Drugs that were needed; not available',193310.21,'South Africa'),
('country','ZA',2009,'continent','AFR','Not on medical aid scheme list of facilities',72532.74,'South Africa'),
('country','ZA',2009,'continent','AFR','Prefer to use a state/provincial health institution',222430.96,'South Africa'),
('level1','ZA_1_001',2009,'country','ZA','Incorrect diagnosis',0,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Staff rude or uncaring or turned patient away',10916.07,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Other',104143.64,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Drugs that were needed; not available',2662.01,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Unspecified',42059.06,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Prefer to use a state/provincial health institution',25666.58,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Too expensive',39166.98,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Not applicable',5799060.76,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Opening times not convenient',8295.42,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Long waiting time',151456.68,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Prefer to use a private health institution',444796.13,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Not on medical aid scheme list of facilities',18995.65,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Facilities not clean',3042.04,'Western Cape') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allReasonForNotUsingNearestFacilities','"General Household Survey, 2018"','https://open.africa/dataset/general-household-survey-2018/resource/b95c7dfc-a166-4e10-9e8d-95b8d88266d7') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allReasonForNotUsingNearestFacilities','"General Household Survey, 2018"','https://open.africa/dataset/general-household-survey-2018/resource/b95c7dfc-a166-4e10-9e8d-95b8d88266d7') ON CONFLICT DO NOTHING;
