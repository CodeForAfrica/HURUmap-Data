SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.inpatient_bed_utilisation_rate DROP CONSTRAINT IF EXISTS pk_inpatient_bed_utilisation_rate;
DROP TABLE IF EXISTS public.inpatient_bed_utilisation_rate;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.inpatient_bed_utilisation_rate (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.inpatient_bed_utilisation_rate VALUES
('level2','ZA_2_00244',2009,'level1','ZA_1_002','Inpatient bed utilisation rate',63.2,'Alfred Nzo'),
('level2','ZA_2_00525',2009,'level1','ZA_1_005','Inpatient bed utilisation rate',65.4,'Amajuba'),
('level2','ZA_2_00212',2009,'level1','ZA_1_002','Inpatient bed utilisation rate',52.6,'Amathole'),
('level2','ZA_2_00637',2009,'level1','ZA_1_006','Inpatient bed utilisation rate',71.4,'Bojanala'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Inpatient bed utilisation rate',54.8,'Buffalo City'),
('level2','ZA_2_00102',2009,'level1','ZA_1_001','Inpatient bed utilisation rate',79.4,'Cape Winelands'),
('level2','ZA_2_00935',2009,'level1','ZA_1_009','Inpatient bed utilisation rate',76.2,'Capricorn'),
('level2','ZA_2_00105',2009,'level1','ZA_1_001','Inpatient bed utilisation rate',73.2,'Central Karoo'),
('level2','ZA_2_00213',2009,'level1','ZA_1_002','Inpatient bed utilisation rate',47.3,'Chris Hani'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Inpatient bed utilisation rate',98.7,'City of Cape Town'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Inpatient bed utilisation rate',67.8,'City of Johannesburg'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Inpatient bed utilisation rate',67.2,'City of Tshwane'),
('level2','ZA_2_00640',2009,'level1','ZA_1_006','Inpatient bed utilisation rate',67.6,'Dr Kenneth Kaunda'),
('level2','ZA_2_00639',2009,'level1','ZA_1_006','Inpatient bed utilisation rate',60.7,'Dr Ruth Segomotsi Mompati'),
('level1','ZA_1_002',2009,'country','ZA','Inpatient bed utilisation rate',54.7,'Eastern Cape'),
('level2','ZA_2_00832',2009,'level1','ZA_1_008','Inpatient bed utilisation rate',71.5,'Ehlanzeni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Inpatient bed utilisation rate',73.6,'Ekurhuleni'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Inpatient bed utilisation rate',61.4,'eThekwini'),
('level2','ZA_2_00420',2009,'level1','ZA_1_004','Inpatient bed utilisation rate',67.5,'Fezile Dabi'),
('level2','ZA_2_00309',2009,'level1','ZA_1_003','Inpatient bed utilisation rate',35.9,'Frances Baard'),
('level1','ZA_1_004',2009,'country','ZA','Inpatient bed utilisation rate',60.2,'Free State'),
('level1','ZA_1_007',2009,'country','ZA','Inpatient bed utilisation rate',66.9,'Gauteng'),
('level2','ZA_2_00830',2009,'level1','ZA_1_008','Inpatient bed utilisation rate',68.4,'Gert Sibande'),
('level2','ZA_2_00529',2009,'level1','ZA_1_005','Inpatient bed utilisation rate',48.2,'iLembe'),
('level2','ZA_2_00214',2009,'level1','ZA_1_002','Inpatient bed utilisation rate',55.5,'Joe Gqabi'),
('level2','ZA_2_00345',2009,'level1','ZA_1_003','Inpatient bed utilisation rate',56.2,'John Taolo Gaetsewe'),
('level1','ZA_1_005',2009,'country','ZA','Inpatient bed utilisation rate',57,'KwaZulu-Natal'),
('level2','ZA_2_00418',2009,'level1','ZA_1_004','Inpatient bed utilisation rate',57.1,'Lejweleputswa'),
('level1','ZA_1_009',2009,'country','ZA','Inpatient bed utilisation rate',72.7,'Limpopo'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Inpatient bed utilisation rate',65.7,'Mangaung'),
('level2','ZA_2_00933',2009,'level1','ZA_1_009','Inpatient bed utilisation rate',80.5,'Mopani'),
('level1','ZA_1_008',2009,'country','ZA','Inpatient bed utilisation rate',69.5,'Mpumalanga'),
('level2','ZA_2_00306',2009,'level1','ZA_1_003','Inpatient bed utilisation rate',73.5,'Namakwa'),
('level2','ZA_2_00638',2009,'level1','ZA_1_006','Inpatient bed utilisation rate',49.4,'Ngaka Modiri Molema'),
('level2','ZA_2_00831',2009,'level1','ZA_1_008','Inpatient bed utilisation rate',68.9,'Nkangala'),
('level1','ZA_1_006',2009,'country','ZA','Inpatient bed utilisation rate',63,'North West'),
('level1','ZA_1_003',2009,'country','ZA','Inpatient bed utilisation rate',54.6,'Northern Cape'),
('level2','ZA_2_00215',2009,'level1','ZA_1_002','Inpatient bed utilisation rate',54,'O.R.Tambo'),
('level2','ZA_2_00103',2009,'level1','ZA_1_001','Inpatient bed utilisation rate',76.6,'Overberg'),
('level2','ZA_2_00307',2009,'level1','ZA_1_003','Inpatient bed utilisation rate',60,'Pixley ka Seme'),
('level2','ZA_2_00742',2009,'level1','ZA_1_007','Inpatient bed utilisation rate',74.9,'Sedibeng'),
('level2','ZA_2_00947',2009,'level1','ZA_1_009','Inpatient bed utilisation rate',68.2,'Sekhukhune'),
('country','ZA',2009,'continent','AFR','Inpatient bed utilisation rate',65.2,'South Africa'),
('level2','ZA_2_00521',2009,'level1','ZA_1_005','Inpatient bed utilisation rate',67.7,'Ugu'),
('level2','ZA_2_00522',2009,'level1','ZA_1_005','Inpatient bed utilisation rate',77.1,'Umgungundlovu'),
('level2','ZA_2_00527',2009,'level1','ZA_1_005','Inpatient bed utilisation rate',60.7,'Umkhanyakude'),
('level2','ZA_2_00524',2009,'level1','ZA_1_005','Inpatient bed utilisation rate',53.7,'Umzinyathi'),
('level2','ZA_2_00523',2009,'level1','ZA_1_005','Inpatient bed utilisation rate',66.1,'Uthukela'),
('level2','ZA_2_00934',2009,'level1','ZA_1_009','Inpatient bed utilisation rate',74.7,'Vhembe'),
('level2','ZA_2_00936',2009,'level1','ZA_1_009','Inpatient bed utilisation rate',62.9,'Waterberg'),
('level2','ZA_2_00101',2009,'level1','ZA_1_001','Inpatient bed utilisation rate',87.5,'West Coast'),
('level2','ZA_2_00748',2009,'level1','ZA_1_007','Inpatient bed utilisation rate',61.5,'West Rand'),
('level1','ZA_1_001',2009,'country','ZA','Inpatient bed utilisation rate',88.3,'Western Cape'),
('level2','ZA_2_00416',2009,'level1','ZA_1_004','Inpatient bed utilisation rate',56.8,'Xhariep'),
('level2','ZA_2_00526',2009,'level1','ZA_1_005','Inpatient bed utilisation rate',61.2,'Zululand'),
('level2','ZA_2_00308',2009,'level1','ZA_1_003','Inpatient bed utilisation rate',45.5,'Z F Mgcawu');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allInpatientBedUtilisationRates','"District Health Barometer, 2018/19"','https://open.africa/dataset/district-health-barometer-2018-19/resource/0381062b-e65d-4967-8cf1-24998775eeb0') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allInpatientBedUtilisationRates','"District Health Barometer, 2018/19"','https://open.africa/dataset/district-health-barometer-2018-19/resource/0381062b-e65d-4967-8cf1-24998775eeb0') on conflict do nothing;

ALTER TABLE ONLY public.inpatient_bed_utilisation_rate ADD CONSTRAINT pk_inpatient_bed_utilisation_rate PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);
