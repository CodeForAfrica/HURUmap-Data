SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.transport_to_nearest_health_facility DROP CONSTRAINT IF EXISTS pk_transport_to_nearest_health_facility;
DROP TABLE IF EXISTS public.transport_to_nearest_health_facility;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.transport_to_nearest_health_facility (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.transport_to_nearest_health_facility VALUES
('level1','ZA_1_003',2009,'country','ZA','Train',6040.2,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Bus',35030.11,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Own transport',776735.19,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Minibus taxi/sedan taxi/bakkie taxi',2083253.06,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Unspecified',59713.69,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Other',54600.76,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Walking',3492041.79,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Bicycle/motorcycle',722.73,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Train',2499.09,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Other',75172.57,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Bicycle/motorcycle',0,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Bus',4941.46,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Walking',1747447.17,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Unspecified',33503.8,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Minibus taxi/sedan taxi/bakkie taxi',450031.84,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Own transport',577652.15,'Free State'),
('level1','ZA_1_009',2009,'country','ZA','Bus',20871.11,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Train',28589.67,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Minibus taxi/sedan taxi/bakkie taxi',2627825.51,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Bicycle/motorcycle',19191.15,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Unspecified',169668.2,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Walking',7197031.32,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Other',53040,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Own transport',4544527.54,'Gauteng'),
('level1','ZA_1_001',2009,'country','ZA','Other',42828.16,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Train',11049.12,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Unspecified',46345.51,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Bicycle/motorcycle',5487.59,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Own transport',1806242.35,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Minibus taxi/sedan taxi/bakkie taxi',4710057.26,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Walking',4343028.29,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Bus',250179.32,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Own transport',608329.16,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Minibus taxi/sedan taxi/bakkie taxi',2207208.51,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Other',53709.08,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Unspecified',27363.84,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Train',519.1,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Bicycle/motorcycle',7931.09,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Bus',83613.21,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Walking',2865082.1,'Limpopo'),
('level1','ZA_1_004',2009,'country','ZA','Bicycle/motorcycle',4955.86,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Other',93776.87,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Unspecified',29280.19,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Minibus taxi/sedan taxi/bakkie taxi',1339013.8,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Walking',2112580.17,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Train',7072.15,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Bus',74921.89,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Own transport',861832.56,'Mpumalanga'),
('level1','ZA_1_007',2009,'country','ZA','Own transport',644897.24,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Minibus taxi/sedan taxi/bakkie taxi',747812.3,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Bicycle/motorcycle',9444.48,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Bus',51780.32,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Train',18880.69,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Walking',2381179.84,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Unspecified',8923.37,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Other',62300.1,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Walking',846076.5,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Train',0,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Bicycle/motorcycle',264.82,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Minibus taxi/sedan taxi/bakkie taxi',87223.26,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Own transport',249405.03,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Bus',4233.62,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Other',38360.56,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Unspecified',4230.61,'Northern Cape'),
('country','ZA',2009,'continent','AFR','Unspecified',415113.34,'South Africa'),
('country','ZA',2009,'continent','AFR','Other',654357.21,'South Africa'),
('country','ZA',2009,'continent','AFR','Bicycle/motorcycle',61616.89,'South Africa'),
('country','ZA',2009,'continent','AFR','Own transport',12453016.2,'South Africa'),
('country','ZA',2009,'continent','AFR','Train',95012.65,'South Africa'),
('country','ZA',2009,'continent','AFR','Bus',608612.54,'South Africa'),
('country','ZA',2009,'continent','AFR','Minibus taxi/sedan taxi/bakkie taxi',15366667.84,'South Africa'),
('country','ZA',2009,'continent','AFR','Walking',27803414.34,'South Africa'),
('level1','ZA_1_008',2009,'country','ZA','Other',180569.11,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Bicycle/motorcycle',13619.16,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Own transport',2383394.99,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Train',20362.64,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Bus',83041.51,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Minibus taxi/sedan taxi/bakkie taxi',1114242.3,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Unspecified',36084.13,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Walking',2818947.17,'Western Cape');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allTransportToNearestHealthFacilities','"General Household Survey, 2018"','https://open.africa/dataset/general-household-survey-2018/resource/662c4d17-2d15-43d5-a7f8-08e48d0a14bf') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allTransportToNearestHealthFacilities','"General Household Survey, 2018"','https://open.africa/dataset/general-household-survey-2018/resource/662c4d17-2d15-43d5-a7f8-08e48d0a14bf') on conflict do nothing;

ALTER TABLE ONLY public.transport_to_nearest_health_facility ADD CONSTRAINT pk_transport_to_nearest_health_facility PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);
