SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.cardiovascular_risk DROP CONSTRAINT IF EXISTS pk_cardiovascular_risk;
DROP TABLE IF EXISTS public.cardiovascular_risk;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.cardiovascular_risk (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable_ TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.cardiovascular_risk ADD CONSTRAINT pk_cardiovascular_risk PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_, value, name);

INSERT INTO public.cardiovascular_risk VALUES
('level2','ZA_2_00244',2009,'level1','ZA_1_002','Cardiovascular Risk',69,'Alfred Nzo'),
('level2','ZA_2_00525',2009,'level1','ZA_1_005','Cardiovascular Risk',57,'Amajuba'),
('level2','ZA_2_00212',2009,'level1','ZA_1_002','Cardiovascular Risk',62,'Amathole'),
('level2','ZA_2_00637',2009,'level1','ZA_1_006','Cardiovascular Risk',65,'Bojanala'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Cardiovascular Risk',56,'Buffalo City'),
('level2','ZA_2_00210',2009,'level1','ZA_1_002','Cardiovascular Risk',51,'Sarah Baartman'),
('level2','ZA_2_00102',2009,'level1','ZA_1_001','Cardiovascular Risk',41,'Cape Winelands'),
('level2','ZA_2_00935',2009,'level1','ZA_1_009','Cardiovascular Risk',72,'Capricorn'),
('level2','ZA_2_00105',2009,'level1','ZA_1_001','Cardiovascular Risk',47,'Central Karoo'),
('level2','ZA_2_00213',2009,'level1','ZA_1_002','Cardiovascular Risk',60,'Chris Hani'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Cardiovascular Risk',58,'City of Cape Town'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Cardiovascular Risk',58,'City of Johannesburg'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Cardiovascular Risk',64,'City of Tshwane'),
('level2','ZA_2_00640',2009,'level1','ZA_1_006','Cardiovascular Risk',66,'Dr Kenneth Kaunda'),
('level2','ZA_2_00639',2009,'level1','ZA_1_006','Cardiovascular Risk',56,'Dr Ruth Segomotsi Mompati'),
('level1','ZA_1_002',2009,'country','ZA','Cardiovascular Risk',61,'Eastern Cape'),
('level2','ZA_2_00104',2009,'level1','ZA_1_001','Cardiovascular Risk',50,'Garden Route'),
('level2','ZA_2_00832',2009,'level1','ZA_1_008','Cardiovascular Risk',74,'Ehlanzeni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Cardiovascular Risk',55,'Ekurhuleni'),
('level2','ZA_2_00420',2009,'level1','ZA_1_004','Cardiovascular Risk',49,'Fezile Dabi'),
('level2','ZA_2_00309',2009,'level1','ZA_1_003','Cardiovascular Risk',66,'Frances Baard'),
('level1','ZA_1_004',2009,'country','ZA','Cardiovascular Risk',54,'Free State'),
('level1','ZA_1_007',2009,'country','ZA','Cardiovascular Risk',63,'Gauteng'),
('level2','ZA_2_00830',2009,'level1','ZA_1_008','Cardiovascular Risk',70,'Gert Sibande'),
('level2','ZA_2_00214',2009,'level1','ZA_1_002','Cardiovascular Risk',45,'Joe Gqabi'),
('level2','ZA_2_00345',2009,'level1','ZA_1_003','Cardiovascular Risk',47,'John Taolo Gaetsewe'),
('level1','ZA_1_005',2009,'country','ZA','Cardiovascular Risk',57,'KwaZulu-Natal'),
('level2','ZA_2_00418',2009,'level1','ZA_1_004','Cardiovascular Risk',56,'Lejweleputswa'),
('level1','ZA_1_009',2009,'country','ZA','Cardiovascular Risk',67,'Limpopo'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Cardiovascular Risk',46,'Mangaung'),
('level2','ZA_2_00933',2009,'level1','ZA_1_009','Cardiovascular Risk',65,'Mopani'),
('level1','ZA_1_008',2009,'country','ZA','Cardiovascular Risk',70,'Mpumalanga'),
('level2','ZA_2_00306',2009,'level1','ZA_1_003','Cardiovascular Risk',43,'Namakwa'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Cardiovascular Risk',51,'Nelson Mandela Bay'),
('level2','ZA_2_00638',2009,'level1','ZA_1_006','Cardiovascular Risk',56,'Ngaka Modiri Molema'),
('level2','ZA_2_00831',2009,'level1','ZA_1_008','Cardiovascular Risk',66,'Nkangala'),
('level1','ZA_1_006',2009,'country','ZA','Cardiovascular Risk',61,'North West'),
('level1','ZA_1_003',2009,'country','ZA','Cardiovascular Risk',50,'Northern Cape'),
('level2','ZA_2_00215',2009,'level1','ZA_1_002','Cardiovascular Risk',69,'O.R.Tambo'),
('level2','ZA_2_00103',2009,'level1','ZA_1_001','Cardiovascular Risk',43,'Overberg'),
('level2','ZA_2_00307',2009,'level1','ZA_1_003','Cardiovascular Risk',46,'Pixley ka Seme'),
('level2','ZA_2_00742',2009,'level1','ZA_1_007','Cardiovascular Risk',86,'Sedibeng'),
('level2','ZA_2_00947',2009,'level1','ZA_1_009','Cardiovascular Risk',67,'Sekhukhune'),
('level2','ZA_2_00543',2009,'level1','ZA_1_005','Cardiovascular Risk',65,'Harry Gwala'),
('country','ZA',2009,'continent','AFR','Cardiovascular Risk',60,'South Africa'),
('level2','ZA_2_00521',2009,'level1','ZA_1_005','Cardiovascular Risk',54,'Ugu'),
('level2','ZA_2_00522',2009,'level1','ZA_1_005','Cardiovascular Risk',62,'Umgungundlovu'),
('level2','ZA_2_00527',2009,'level1','ZA_1_005','Cardiovascular Risk',49,'Umkhanyakude'),
('level2','ZA_2_00524',2009,'level1','ZA_1_005','Cardiovascular Risk',58,'Umzinyathi'),
('level2','ZA_2_00523',2009,'level1','ZA_1_005','Cardiovascular Risk',63,'Uthukela'),
('level2','ZA_2_00528',2009,'level1','ZA_1_005','Cardiovascular Risk',54,'King Cetshwayo'),
('level2','ZA_2_00934',2009,'level1','ZA_1_009','Cardiovascular Risk',69,'Vhembe'),
('level2','ZA_2_00936',2009,'level1','ZA_1_009','Cardiovascular Risk',59,'Waterberg'),
('level2','ZA_2_00101',2009,'level1','ZA_1_001','Cardiovascular Risk',45,'West Coast'),
('level2','ZA_2_00748',2009,'level1','ZA_1_007','Cardiovascular Risk',59,'West Rand'),
('level1','ZA_1_001',2009,'country','ZA','Cardiovascular Risk',53,'Western Cape'),
('level2','ZA_2_00416',2009,'level1','ZA_1_004','Cardiovascular Risk',46,'Xhariep'),
('level2','ZA_2_00308',2009,'level1','ZA_1_003','Cardiovascular Risk',40,'Z F Mgcawu'),
('level2','ZA_2_00526',2009,'level1','ZA_1_005','Cardiovascular Risk',59,'Zululand'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Cardiovascular Risk',55,'eThekwini'),
('level2','ZA_2_00529',2009,'level1','ZA_1_005','Cardiovascular Risk',58,'iLembe') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allCardiovascularRisks','"District Health Barometer, 2018/19"','https://open.africa/dataset/district-health-barometer-2018-19/resource/1fb135b6-6919-4c44-a8aa-e348ddf68c12') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allCardiovascularRisks','"District Health Barometer, 2018/19"','https://open.africa/dataset/district-health-barometer-2018-19/resource/1fb135b6-6919-4c44-a8aa-e348ddf68c12') ON CONFLICT DO NOTHING;
