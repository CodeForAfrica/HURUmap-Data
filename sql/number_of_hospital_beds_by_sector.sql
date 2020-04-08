SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.number_of_hospital_beds_by_sector DROP CONSTRAINT IF EXISTS pk_number_of_hospital_beds_by_sector;
DROP TABLE IF EXISTS public.number_of_hospital_beds_by_sector;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.number_of_hospital_beds_by_sector (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.number_of_hospital_beds_by_sector ADD CONSTRAINT pk_number_of_hospital_beds_by_sector PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.number_of_hospital_beds_by_sector VALUES
('level1','GH_1_024',2009,'country','GH','CHAG',1274,'Ashanti'),
('level1','GH_1_024',2009,'country','GH','Government',1543,'Ashanti'),
('level1','GH_1_024',2009,'country','GH','Private',879,'Ashanti'),
('level1','GH_1_024',2009,'country','GH','Quasi-Government',0,'Ashanti'),
('level1','GH_1_025',2009,'country','GH','CHAG',1611,'Brong Ahafo'),
('level1','GH_1_025',2009,'country','GH','Government',973,'Brong Ahafo'),
('level1','GH_1_025',2009,'country','GH','Private',366,'Brong Ahafo'),
('level1','GH_1_025',2009,'country','GH','Quasi-Government',0,'Brong Ahafo'),
('level1','GH_1_026',2009,'country','GH','CHAG',491,'Central'),
('level1','GH_1_026',2009,'country','GH','Government',1357,'Central'),
('level1','GH_1_026',2009,'country','GH','Private',232,'Central'),
('level1','GH_1_026',2009,'country','GH','Quasi-Government',0,'Central'),
('level1','GH_1_027',2009,'country','GH','CHAG',895,'Eastern'),
('level1','GH_1_027',2009,'country','GH','Government',1816,'Eastern'),
('level1','GH_1_027',2009,'country','GH','Private',1017,'Eastern'),
('level1','GH_1_027',2009,'country','GH','Quasi-Government',0,'Eastern'),
('country','GH',2009,'continent','AFR','CHAG',6980,'Ghana'),
('country','GH',2009,'continent','AFR','Government',13564,'Ghana'),
('country','GH',2009,'continent','AFR','Private',3181,'Ghana'),
('country','GH',2009,'continent','AFR','Quasi-Government',104,'Ghana'),
('level1','GH_1_028',2009,'country','GH','CHAG',68,'Greater Accra'),
('level1','GH_1_028',2009,'country','GH','Government',1882,'Greater Accra'),
('level1','GH_1_028',2009,'country','GH','Private',99,'Greater Accra'),
('level1','GH_1_028',2009,'country','GH','Quasi-Government',0,'Greater Accra'),
('level1','GH_1_029',2009,'country','GH','CHAG',394,'Northern'),
('level1','GH_1_029',2009,'country','GH','Government',1452,'Northern'),
('level1','GH_1_029',2009,'country','GH','Private',0,'Northern'),
('level1','GH_1_029',2009,'country','GH','Quasi-Government',0,'Northern'),
('level1','GH_1_030',2009,'country','GH','CHAG',388,'Upper East'),
('level1','GH_1_030',2009,'country','GH','Government',925,'Upper East'),
('level1','GH_1_030',2009,'country','GH','Private',50,'Upper East'),
('level1','GH_1_030',2009,'country','GH','Quasi-Government',0,'Upper East'),
('level1','GH_1_031',2009,'country','GH','CHAG',404,'Upper West'),
('level1','GH_1_031',2009,'country','GH','Government',629,'Upper West'),
('level1','GH_1_031',2009,'country','GH','Private',0,'Upper West'),
('level1','GH_1_031',2009,'country','GH','Quasi-Government',0,'Upper West'),
('level1','GH_1_032',2009,'country','GH','CHAG',875,'Volta'),
('level1','GH_1_032',2009,'country','GH','Government',1500,'Volta'),
('level1','GH_1_032',2009,'country','GH','Private',60,'Volta'),
('level1','GH_1_032',2009,'country','GH','Quasi-Government',0,'Volta'),
('level1','GH_1_033',2009,'country','GH','CHAG',580,'Western'),
('level1','GH_1_033',2009,'country','GH','Government',1487,'Western'),
('level1','GH_1_033',2009,'country','GH','Private',478,'Western'),
('level1','GH_1_033',2009,'country','GH','Quasi-Government',104,'Western') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','GH','allNumberOfHospitalBedsBySectors','"The Health Sector In Ghana Facts And Figures, 2018"','https://open.africa/dataset/the-health-sector-in-ghana-facts-and-figures-2018/resource/92d187e6-af62-40db-af5f-b74a04249846') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','GH','allNumberOfHospitalBedsBySectors','"The Health Sector In Ghana Facts And Figures, 2018"','https://open.africa/dataset/the-health-sector-in-ghana-facts-and-figures-2018/resource/92d187e6-af62-40db-af5f-b74a04249846') ON CONFLICT DO NOTHING;
