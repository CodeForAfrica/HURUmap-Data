SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.natural_non_natural_underlying_causes_of_death DROP CONSTRAINT IF EXISTS pk_natural_non_natural_underlying_causes_of_death;
DROP TABLE IF EXISTS public.natural_non_natural_underlying_causes_of_death;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.natural_non_natural_underlying_causes_of_death (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.natural_non_natural_underlying_causes_of_death VALUES
('level1','ZA_1_002',2009,'country','ZA','Natural underlying cause',1341678,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Non-natural underlying cause',152516,'Eastern Cape'),
('level1','ZA_1_004',2009,'country','ZA','Natural underlying cause',757652,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Non-natural underlying cause',65068,'Free State'),
('level1','ZA_1_007',2009,'country','ZA','Non-natural underlying cause',236310,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Natural underlying cause',1841650,'Gauteng'),
('level1','ZA_1_005',2009,'country','ZA','Non-natural underlying cause',218031,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Natural underlying cause',2050759,'KwaZulu-Natal'),
('level1','ZA_1_009',2009,'country','ZA','Non-natural underlying cause',73734,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Natural underlying cause',821615,'Limpopo'),
('level1','ZA_1_008',2009,'country','ZA','Non-natural underlying cause',71580,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Natural underlying cause',690261,'Mpumalanga'),
('level1','ZA_1_006',2009,'country','ZA','Natural underlying cause',696776,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Non-natural underlying cause',61074,'North West'),
('level1','ZA_1_003',2009,'country','ZA','Non-natural underlying cause',27122,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Natural underlying cause',248578,'Northern Cape'),
('country','ZA',2009,'continent','AFR','Natural underlying cause',9241354,'South Africa'),
('country','ZA',2009,'continent','AFR','Non-natural underlying cause',1036023,'South Africa'),
('level1','ZA_1_001',2009,'country','ZA','Non-natural underlying cause',129172,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Natural underlying cause',779635,'Western Cape');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allNaturalNonNaturalUnderlyingCausesOfDeaths','"Mortality and causes of death from death notification, 1997-2016"','https://open.africa/dataset/mortality-and-causes-of-death-from-death-notification-1997-2016/resource/cb20cbe4-3d20-4ca8-80c4-d2ca2b582d2d') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allNaturalNonNaturalUnderlyingCausesOfDeaths','"Mortality and causes of death from death notification, 1997-2016"','https://open.africa/dataset/mortality-and-causes-of-death-from-death-notification-1997-2016/resource/cb20cbe4-3d20-4ca8-80c4-d2ca2b582d2d') on conflict do nothing;

ALTER TABLE ONLY public.natural_non_natural_underlying_causes_of_death ADD CONSTRAINT pk_natural_non_natural_underlying_causes_of_death PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);
