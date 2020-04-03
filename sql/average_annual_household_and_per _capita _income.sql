SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.average_annual_household_and_per _capita _income DROP CONSTRAINT IF EXISTS pk_average_annual_household_and_per _capita _income;
DROP TABLE IF EXISTS public.average_annual_household_and_per _capita _income;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.average_annual_household_and_per _capita _income (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.average_annual_household_and_per _capita _income VALUES
('level1','GH_1_024',2009,'country','GH','Mean annual per capita income',56664,'Ashanti'),
('level1','GH_1_024',2009,'country','GH','Mean annual household income',72491,'Ashanti'),
('level1','GH_1_025',2009,'country','GH','Mean annual per capita income',12606,'Brong Ahafo'),
('level1','GH_1_025',2009,'country','GH','Mean annual household income',30710,'Brong Ahafo'),
('level1','GH_1_026',2009,'country','GH','Mean annual household income',32564,'Central'),
('level1','GH_1_026',2009,'country','GH','Mean annual per capita income',12189,'Central'),
('level1','GH_1_027',2009,'country','GH','Mean annual household income',21592,'Eastern'),
('level1','GH_1_027',2009,'country','GH','Mean annual per capita income',7718,'Eastern'),
('country','GH',2009,'continent','AFR','Mean annual household income',44042,'Ghana'),
('country','GH',2009,'continent','AFR','Mean annual per capita income',21819,'Ghana'),
('level1','GH_1_028',2009,'country','GH','Mean annual per capita income',21592,'Greater Accra'),
('level1','GH_1_028',2009,'country','GH','Mean annual household income',64701,'Greater Accra'),
('level1','GH_1_029',2009,'country','GH','Mean annual household income',22919,'Northern'),
('level1','GH_1_029',2009,'country','GH','Mean annual per capita income',5748,'Northern'),
('level1','GH_1_030',2009,'country','GH','Mean annual household income',16130,'Upper East'),
('level1','GH_1_030',2009,'country','GH','Mean annual per capita income',3372,'Upper East'),
('level1','GH_1_031',2009,'country','GH','Mean annual per capita income',3604,'Upper West'),
('level1','GH_1_031',2009,'country','GH','Mean annual household income',12958,'Upper West'),
('level1','GH_1_032',2009,'country','GH','Mean annual per capita income',7394,'Volta'),
('level1','GH_1_032',2009,'country','GH','Mean annual household income',31612,'Volta'),
('level1','GH_1_033',2009,'country','GH','Mean annual per capita income',9058,'Western'),
('level1','GH_1_033',2009,'country','GH','Mean annual household income',30862,'Western');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','GH','allAverageAnnualHouseholdAndPer Capita Incomes','"Ghana Living Standards Survey (GLSS 7), 2017"','https://open.africa/dataset/ghana-living-standards-survey-glss-7-2017/resource/34c81b4f-c17d-4417-839f-08236abf712b') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','GH','allAverageAnnualHouseholdAndPer Capita Incomes','"Ghana Living Standards Survey (GLSS 7), 2017"','https://open.africa/dataset/ghana-living-standards-survey-glss-7-2017/resource/34c81b4f-c17d-4417-839f-08236abf712b') on conflict do nothing;

ALTER TABLE ONLY public.average_annual_household_and_per _capita _income ADD CONSTRAINT pk_average_annual_household_and_per _capita _income PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);
