SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.level_of_formality DROP CONSTRAINT IF EXISTS pk_level_of_formality;
DROP TABLE IF EXISTS public.level_of_formality;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.level_of_formality (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.level_of_formality VALUES
('level1','ZA_1_003',2009,'country','ZA','Farms',1393880982,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Traditional',3570061464,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Urban',3287526405,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Traditional',2648385392,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Farms',1486178847,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Urban',2421257483,'Free State'),
('level1','ZA_1_009',2009,'country','ZA','Farms',1997329626,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Urban',1299341774,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Traditional',2065737765,'Gauteng'),
('level1','ZA_1_001',2009,'country','ZA','Traditional',5240384958,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Urban',5186872715,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Farms',637982306,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Farms',1850251788,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Urban',1017675024,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Traditional',4596389738,'Limpopo'),
('level1','ZA_1_004',2009,'country','ZA','Urban',1911174836,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Farms',2976829145,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Traditional',2127106125,'Mpumalanga'),
('level1','ZA_1_007',2009,'country','ZA','Farms',188551987,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Urban',1740710111,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Traditional',1819173312,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Traditional',1948989206,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Farms',8219178169,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Urban',9166896847,'Northern Cape'),
('country','ZA',2009,'continent','AFR','Traditional',1801942683,'South Africa'),
('country','ZA',2009,'continent','AFR','Farms',2178780713,'South Africa'),
('country','ZA',2009,'continent','AFR','Urban',3545544685,'South Africa'),
('level1','ZA_1_008',2009,'country','ZA','Traditional',0,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Urban',5980122852,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Farms',2996076001,'Western Cape');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allLevelOfFormalities','"Community Survey, 2016"','https://open.africa/dataset/community-survey-south-africa-2016/resource/9a65a9bc-6317-4cc9-becf-c476605ba328') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allLevelOfFormalities','"Community Survey, 2016"','https://open.africa/dataset/community-survey-south-africa-2016/resource/9a65a9bc-6317-4cc9-becf-c476605ba328') on conflict do nothing;
