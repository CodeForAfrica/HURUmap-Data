SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.inpatient_crude_death_rate DROP CONSTRAINT IF EXISTS pk_inpatient_crude_death_rate;
DROP TABLE IF EXISTS public.inpatient_crude_death_rate;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.inpatient_crude_death_rate (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.inpatient_crude_death_rate VALUES
('level2','ZA_2_00244',2009,'level1','ZA_1_002','Inpatient crude death rate',5.7,'Alfred Nzo'),
('level2','ZA_2_00525',2009,'level1','ZA_1_005','Inpatient crude death rate',5,'Amajuba'),
('level2','ZA_2_00212',2009,'level1','ZA_1_002','Inpatient crude death rate',6.4,'Amathole'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Inpatient crude death rate',6.2,'Buffalo City'),
('level2','ZA_2_00102',2009,'level1','ZA_1_001','Inpatient crude death rate',2.8,'Cape Winelands'),
('level2','ZA_2_00935',2009,'level1','ZA_1_009','Inpatient crude death rate',5.5,'Capricorn'),
('level2','ZA_2_00105',2009,'level1','ZA_1_001','Inpatient crude death rate',3.4,'Central Karoo'),
('level1','ZA_1_002',2009,'country','ZA','Inpatient crude death rate',5.8,'Eastern Cape'),
('level2','ZA_2_00832',2009,'level1','ZA_1_008','Inpatient crude death rate',5,'Ehlanzeni'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Inpatient crude death rate',4.2,'eThekwini'),
('level2','ZA_2_00420',2009,'level1','ZA_1_004','Inpatient crude death rate',5.9,'Fezile Dabi'),
('level2','ZA_2_00309',2009,'level1','ZA_1_003','Inpatient crude death rate',5.8,'Frances Baard'),
('level1','ZA_1_004',2009,'country','ZA','Inpatient crude death rate',4.3,'Free State'),
('level1','ZA_1_007',2009,'country','ZA','Inpatient crude death rate',4.5,'Gauteng'),
('level2','ZA_2_00529',2009,'level1','ZA_1_005','Inpatient crude death rate',4.6,'iLembe'),
('level2','ZA_2_00214',2009,'level1','ZA_1_002','Inpatient crude death rate',6.8,'Joe Gqabi'),
('level1','ZA_1_005',2009,'country','ZA','Inpatient crude death rate',4.7,'KwaZulu-Natal'),
('level2','ZA_2_00418',2009,'level1','ZA_1_004','Inpatient crude death rate',4.3,'Lejweleputswa'),
('level1','ZA_1_009',2009,'country','ZA','Inpatient crude death rate',4.8,'Limpopo'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Inpatient crude death rate',3.7,'Mangaung'),
('level2','ZA_2_00933',2009,'level1','ZA_1_009','Inpatient crude death rate',4.8,'Mopani'),
('level1','ZA_1_008',2009,'country','ZA','Inpatient crude death rate',5,'Mpumalanga'),
('level2','ZA_2_00306',2009,'level1','ZA_1_003','Inpatient crude death rate',3.4,'Namakwa'),
('level2','ZA_2_00831',2009,'level1','ZA_1_008','Inpatient crude death rate',5.9,'Nkangala'),
('level1','ZA_1_006',2009,'country','ZA','Inpatient crude death rate',5.9,'North West'),
('level1','ZA_1_003',2009,'country','ZA','Inpatient crude death rate',5.2,'Northern Cape'),
('level2','ZA_2_00103',2009,'level1','ZA_1_001','Inpatient crude death rate',2.4,'Overberg'),
('level2','ZA_2_00307',2009,'level1','ZA_1_003','Inpatient crude death rate',5.6,'Pixley Ka Seme'),
('level2','ZA_2_00742',2009,'level1','ZA_1_007','Inpatient crude death rate',5.2,'Sedibeng'),
('level2','ZA_2_00947',2009,'level1','ZA_1_009','Inpatient crude death rate',4.3,'Sekhukhune'),
('country','ZA',2009,'continent','AFR','Inpatient crude death rate',4.6,'South Africa'),
('level2','ZA_2_00521',2009,'level1','ZA_1_005','Inpatient crude death rate',5.3,'Ugu'),
('level2','ZA_2_00522',2009,'level1','ZA_1_005','Inpatient crude death rate',4.9,'Umgungundlovu'),
('level2','ZA_2_00527',2009,'level1','ZA_1_005','Inpatient crude death rate',4.5,'Umkhanyakude'),
('level2','ZA_2_00524',2009,'level1','ZA_1_005','Inpatient crude death rate',5.2,'Umzinyathi'),
('level2','ZA_2_00523',2009,'level1','ZA_1_005','Inpatient crude death rate',5.6,'Uthukela'),
('level2','ZA_2_00934',2009,'level1','ZA_1_009','Inpatient crude death rate',4.6,'Vhembe'),
('level2','ZA_2_00936',2009,'level1','ZA_1_009','Inpatient crude death rate',4.7,'Waterberg'),
('level2','ZA_2_00101',2009,'level1','ZA_1_001','Inpatient crude death rate',3.1,'West Coast'),
('level2','ZA_2_00748',2009,'level1','ZA_1_007','Inpatient crude death rate',4.3,'West Rand'),
('level1','ZA_1_001',2009,'country','ZA','Inpatient crude death rate',2.9,'Western Cape'),
('level2','ZA_2_00416',2009,'level1','ZA_1_004','Inpatient crude death rate',4.7,'Xhariep'),
('level2','ZA_2_00526',2009,'level1','ZA_1_005','Inpatient crude death rate',5,'Zululand');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allInpatientCrudeDeathRates','"District Health Barometer, 2018/19"','https://open.africa/dataset/district-health-barometer-2018-19/resource/d9e7bceb-da3e-479e-8887-11a41ebe9c49') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allInpatientCrudeDeathRates','"District Health Barometer, 2018/19"','https://open.africa/dataset/district-health-barometer-2018-19/resource/d9e7bceb-da3e-479e-8887-11a41ebe9c49') on conflict do nothing;

ALTER TABLE ONLY public.inpatient_crude_death_rate ADD CONSTRAINT pk_inpatient_crude_death_rate PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);
