SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.medical_scheme_coverage DROP CONSTRAINT IF EXISTS pk_medical_scheme_coverage;
DROP TABLE IF EXISTS public.medical_scheme_coverage;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.medical_scheme_coverage (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.medical_scheme_coverage VALUES
('level2','ZA_2_00244',2009,'level1','ZA_1_002','medical scheme coverage',38,'Alfred Nzo'),
('level2','ZA_2_00525',2009,'level1','ZA_1_005','medical scheme coverage',74,'Amajuba'),
('level2','ZA_2_00212',2009,'level1','ZA_1_002','medical scheme coverage',43,'Amathole'),
('level2','ZA_2_00637',2009,'level1','ZA_1_006','medical scheme coverage',140,'Bojanala'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','medical scheme coverage',224,'Buffalo City'),
('level2','ZA_2_00102',2009,'level1','ZA_1_001','medical scheme coverage',164,'Cape Winelands'),
('level2','ZA_2_00935',2009,'level1','ZA_1_009','medical scheme coverage',83,'Capricorn'),
('level2','ZA_2_00105',2009,'level1','ZA_1_001','medical scheme coverage',125,'Central Karoo'),
('level2','ZA_2_00213',2009,'level1','ZA_1_002','medical scheme coverage',49,'Chris Hani'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','medical scheme coverage',222,'City of Cape Town'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','medical scheme coverage',222,'City of Johannesburg'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','medical scheme coverage',306,'City of Tshwane'),
('level2','ZA_2_00640',2009,'level1','ZA_1_006','medical scheme coverage',128,'Dr Kenneth Kaunda'),
('level2','ZA_2_00639',2009,'level1','ZA_1_006','medical scheme coverage',73,'Dr Ruth Segomotsi Mompati'),
('level1','ZA_1_002',2009,'country','ZA','medical scheme coverage',98,'Eastern Cape'),
('level2','ZA_2_00832',2009,'level1','ZA_1_008','medical scheme coverage',102,'Ehlanzeni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','medical scheme coverage',238,'Ekurhuleni'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','medical scheme coverage',189,'eThekwini'),
('level2','ZA_2_00420',2009,'level1','ZA_1_004','medical scheme coverage',132,'Fezile Dabi'),
('level2','ZA_2_00309',2009,'level1','ZA_1_003','medical scheme coverage',157,'Frances Baard'),
('level1','ZA_1_004',2009,'country','ZA','medical scheme coverage',135,'Free State'),
('level1','ZA_1_007',2009,'country','ZA','medical scheme coverage',246,'Gauteng'),
('level2','ZA_2_00830',2009,'level1','ZA_1_008','medical scheme coverage',131,'Gert Sibande'),
('level2','ZA_2_00529',2009,'level1','ZA_1_005','medical scheme coverage',86,'iLembe'),
('level2','ZA_2_00214',2009,'level1','ZA_1_002','medical scheme coverage',50,'Joe Gqabi'),
('level2','ZA_2_00345',2009,'level1','ZA_1_003','medical scheme coverage',139,'John Taolo Gaetsewe'),
('level1','ZA_1_005',2009,'country','ZA','medical scheme coverage',112,'KwaZulu-Natal'),
('level2','ZA_2_00418',2009,'level1','ZA_1_004','medical scheme coverage',120,'Lejweleputswa'),
('level1','ZA_1_009',2009,'country','ZA','medical scheme coverage',72,'Limpopo'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','medical scheme coverage',200,'Mangaung'),
('level2','ZA_2_00933',2009,'level1','ZA_1_009','medical scheme coverage',68,'Mopani'),
('level1','ZA_1_008',2009,'country','ZA','medical scheme coverage',125,'Mpumalanga'),
('level2','ZA_2_00306',2009,'level1','ZA_1_003','medical scheme coverage',175,'Namakwa'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','medical scheme coverage',204,'Nelson Mandela Bay'),
('level2','ZA_2_00638',2009,'level1','ZA_1_006','medical scheme coverage',97,'Ngaka Modiri Molema'),
('level2','ZA_2_00831',2009,'level1','ZA_1_008','medical scheme coverage',148,'Nkangala'),
('level1','ZA_1_006',2009,'country','ZA','medical scheme coverage',119,'North West'),
('level1','ZA_1_003',2009,'country','ZA','medical scheme coverage',151,'Northern Cape'),
('level2','ZA_2_00215',2009,'level1','ZA_1_002','medical scheme coverage',42,'O.R.Tambo'),
('level2','ZA_2_00103',2009,'level1','ZA_1_001','medical scheme coverage',164,'Overberg'),
('level2','ZA_2_00307',2009,'level1','ZA_1_003','medical scheme coverage',131,'Pixley ka Seme'),
('level2','ZA_2_00742',2009,'level1','ZA_1_007','medical scheme coverage',208,'Sedibeng'),
('level2','ZA_2_00947',2009,'level1','ZA_1_009','medical scheme coverage',56,'Sekhukhune'),
('country','ZA',2009,'continent','AFR','medical scheme coverage',154,'South Africa'),
('level2','ZA_2_00521',2009,'level1','ZA_1_005','medical scheme coverage',71,'Ugu'),
('level2','ZA_2_00522',2009,'level1','ZA_1_005','medical scheme coverage',110,'Umgungundlovu'),
('level2','ZA_2_00527',2009,'level1','ZA_1_005','medical scheme coverage',50,'Umkhanyakude'),
('level2','ZA_2_00524',2009,'level1','ZA_1_005','medical scheme coverage',54,'Umzinyathi'),
('level2','ZA_2_00523',2009,'level1','ZA_1_005','medical scheme coverage',64,'Uthukela'),
('level2','ZA_2_00934',2009,'level1','ZA_1_009','medical scheme coverage',66,'Vhembe'),
('level2','ZA_2_00936',2009,'level1','ZA_1_009','medical scheme coverage',91,'Waterberg'),
('level2','ZA_2_00101',2009,'level1','ZA_1_001','medical scheme coverage',173,'West Coast'),
('level2','ZA_2_00748',2009,'level1','ZA_1_007','medical scheme coverage',241,'West Rand'),
('level1','ZA_1_001',2009,'country','ZA','medical scheme coverage',201,'Western Cape'),
('level2','ZA_2_00416',2009,'level1','ZA_1_004','medical scheme coverage',105,'Xhariep'),
('level2','ZA_2_00526',2009,'level1','ZA_1_005','medical scheme coverage',52,'Zululand'),
('level2','ZA_2_00308',2009,'level1','ZA_1_003','medical scheme coverage',158,'Z F Mgcawu');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allMedicalSchemeCoverages','"South African Health Review, 2019"','https://open.africa/dataset/south-african-health-review-2019/resource/abb8ab4e-d06e-44f0-8e7a-1cb00add467b') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allMedicalSchemeCoverages','"South African Health Review, 2019"','https://open.africa/dataset/south-african-health-review-2019/resource/abb8ab4e-d06e-44f0-8e7a-1cb00add467b') on conflict do nothing;

ALTER TABLE ONLY public.medical_scheme_coverage ADD CONSTRAINT pk_medical_scheme_coverage PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);
