SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.place_of_death DROP CONSTRAINT IF EXISTS pk_place_of_death;
DROP TABLE IF EXISTS public.place_of_death;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.place_of_death (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.place_of_death ADD CONSTRAINT pk_place_of_death PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.place_of_death VALUES
('level1','ZA_1_002',2009,'country','ZA','Hospital',622170,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Unknown',44214,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Home',358259,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Nursing home',23970,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Emergency room / Outpatient',30743,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Other',45677,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Dead on arrival',36915,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Unspecified',332246,'Eastern Cape'),
('level1','ZA_1_004',2009,'country','ZA','Unspecified',70282,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Dead on arrival',30847,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Emergency room / Outpatient',14340,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Home',281995,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Nursing home',16766,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Hospital',359282,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Unknown',20590,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Other',28618,'Free State'),
('level1','ZA_1_007',2009,'country','ZA','Dead on arrival',29872,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Unknown',47157,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Other',81692,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Nursing home',57736,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Home',423962,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Emergency room / Outpatient',24947,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Unspecified',448739,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Hospital',963855,'Gauteng'),
('level1','ZA_1_005',2009,'country','ZA','Unspecified',314375,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Nursing home',32148,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Hospital',1048616,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Unknown',60292,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Other',90013,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Home',656574,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Emergency room / Outpatient',36475,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Dead on arrival',30297,'KwaZulu-Natal'),
('level1','ZA_1_009',2009,'country','ZA','Nursing home',9554,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Other',25329,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Home',317019,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Unknown',24058,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Unspecified',149754,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Dead on arrival',6749,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Emergency room / Outpatient',8505,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Hospital',354381,'Limpopo'),
('level1','ZA_1_008',2009,'country','ZA','Home',275876,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Dead on arrival',7355,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Hospital',324134,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Unknown',16912,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Other',30594,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Emergency room / Outpatient',9470,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Nursing home',10161,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Unspecified',87339,'Mpumalanga'),
('level1','ZA_1_006',2009,'country','ZA','Hospital',269899,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Nursing home',15006,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Emergency room / Outpatient',10977,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Home',264823,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Unspecified',141134,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Dead on arrival',12571,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Other',21734,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Unknown',21706,'North West'),
('level1','ZA_1_003',2009,'country','ZA','Unknown',9176,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Nursing home',4687,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Home',60009,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Unspecified',33251,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Dead on arrival',33744,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Emergency room / Outpatient',8009,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Hospital',118561,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Other',8263,'Northern Cape'),
('country','ZA',2009,'continent','AFR','Unknown',271435,'South Africa'),
('country','ZA',2009,'continent','AFR','Nursing home',217331,'South Africa'),
('country','ZA',2009,'continent','AFR','Unspecified',1727709,'South Africa'),
('country','ZA',2009,'continent','AFR','Other',386155,'South Africa'),
('country','ZA',2009,'continent','AFR','Home',2827714,'South Africa'),
('country','ZA',2009,'continent','AFR','Dead on arrival',235121,'South Africa'),
('country','ZA',2009,'continent','AFR','Emergency room / Outpatient',171348,'South Africa'),
('country','ZA',2009,'continent','AFR','Hospital',4440564,'South Africa'),
('level1','ZA_1_001',2009,'country','ZA','Other',53821,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Unspecified',148185,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Home',183463,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Nursing home',47088,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Dead on arrival',46639,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Emergency room / Outpatient',27788,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Unknown',27285,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Hospital',374538,'Western Cape') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allPlaceOfDeaths','"Mortality and causes of death from death notification, 1997-2016"','https://open.africa/dataset/mortality-and-causes-of-death-from-death-notification-1997-2016/resource/9e3a2128-4b5e-4a56-99b1-20a6f0871807') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allPlaceOfDeaths','"Mortality and causes of death from death notification, 1997-2016"','https://open.africa/dataset/mortality-and-causes-of-death-from-death-notification-1997-2016/resource/9e3a2128-4b5e-4a56-99b1-20a6f0871807') ON CONFLICT DO NOTHING;
