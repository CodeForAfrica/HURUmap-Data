SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.essential_medicine DROP CONSTRAINT IF EXISTS pk_essential_medicine;
DROP TABLE IF EXISTS public.essential_medicine;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.essential_medicine (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable_ TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.essential_medicine ADD CONSTRAINT pk_essential_medicine PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_, value, name);

INSERT INTO public.essential_medicine VALUES
('level2','ZA_2_00244',2009,'level1','ZA_1_002','Percent of health facilities with essential medicine',85,'Alfred Nzo'),
('level2','ZA_2_00525',2009,'level1','ZA_1_005','Percent of health facilities with essential medicine',90,'Amajuba'),
('level2','ZA_2_00212',2009,'level1','ZA_1_002','Percent of health facilities with essential medicine',95,'Amathole'),
('level2','ZA_2_00637',2009,'level1','ZA_1_006','Percent of health facilities with essential medicine',98,'Bojanala'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Percent of health facilities with essential medicine',100,'Buffalo City'),
('level2','ZA_2_00213',2009,'level1','ZA_1_002','Percent of health facilities with essential medicine',77,'Chris Hani'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Percent of health facilities with essential medicine',92,'City of Cape Town'),
('level2','ZA_2_00102',2009,'level1','ZA_1_001','Percent of health facilities with essential medicine',100,'Cape Winelands'),
('level2','ZA_2_00935',2009,'level1','ZA_1_009','Percent of health facilities with essential medicine',80,'Capricorn'),
('level2','ZA_2_00105',2009,'level1','ZA_1_001','Percent of health facilities with essential medicine',100,'Central Karoo'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Percent of health facilities with essential medicine',81,'Ekurhuleni'),
('level2','ZA_2_00640',2009,'level1','ZA_1_006','Percent of health facilities with essential medicine',98,'Dr Kenneth Kaunda'),
('level1','ZA_1_002',2009,'country','ZA','Percent of health facilities with essential medicine',83,'Eastern Cape'),
('level2','ZA_2_00832',2009,'level1','ZA_1_008','Percent of health facilities with essential medicine',88,'Ehlanzeni'),
('level2','ZA_2_00420',2009,'level1','ZA_1_004','Percent of health facilities with essential medicine',55,'Fezile Dabi'),
('level2','ZA_2_00309',2009,'level1','ZA_1_003','Percent of health facilities with essential medicine',85,'Frances Baard'),
('level1','ZA_1_004',2009,'country','ZA','Percent of health facilities with essential medicine',65,'Free State'),
('level2','ZA_2_00830',2009,'level1','ZA_1_008','Percent of health facilities with essential medicine',84,'Gert Sibande'),
('level2','ZA_2_00104',2009,'level1','ZA_1_001','Percent of health facilities with essential medicine',99,'Garden Route'),
('level1','ZA_1_007',2009,'country','ZA','Percent of health facilities with essential medicine',87,'Gauteng'),
('level2','ZA_2_00543',2009,'level1','ZA_1_005','Percent of health facilities with essential medicine',99,'Harry Gwala'),
('level2','ZA_2_00345',2009,'level1','ZA_1_003','Percent of health facilities with essential medicine',63,'John Taolo Gaetsewe'),
('level2','ZA_2_00214',2009,'level1','ZA_1_002','Percent of health facilities with essential medicine',65,'Joe Gqabi'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Percent of health facilities with essential medicine',87,'City of Johannesburg'),
('level2','ZA_2_00528',2009,'level1','ZA_1_005','Percent of health facilities with essential medicine',96,'King Cetshwayo'),
('level1','ZA_1_005',2009,'country','ZA','Percent of health facilities with essential medicine',88,'KwaZulu-Natal'),
('level2','ZA_2_00418',2009,'level1','ZA_1_004','Percent of health facilities with essential medicine',60,'Lejweleputswa'),
('level1','ZA_1_009',2009,'country','ZA','Percent of health facilities with essential medicine',58,'Limpopo'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Percent of health facilities with essential medicine',70,'Mangaung'),
('level2','ZA_2_00933',2009,'level1','ZA_1_009','Percent of health facilities with essential medicine',58,'Mopani'),
('level1','ZA_1_008',2009,'country','ZA','Percent of health facilities with essential medicine',85,'Mpumalanga'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Percent of health facilities with essential medicine',90,'Nelson Mandela Bay'),
('level2','ZA_2_00638',2009,'level1','ZA_1_006','Percent of health facilities with essential medicine',97,'Ngaka Modiri Molema'),
('level2','ZA_2_00306',2009,'level1','ZA_1_003','Percent of health facilities with essential medicine',100,'Namakwa'),
('level2','ZA_2_00831',2009,'level1','ZA_1_008','Percent of health facilities with essential medicine',81,'Nkangala'),
('level1','ZA_1_006',2009,'country','ZA','Percent of health facilities with essential medicine',98,'North West'),
('level1','ZA_1_003',2009,'country','ZA','Percent of health facilities with essential medicine',88,'Northern Cape'),
('level2','ZA_2_00215',2009,'level1','ZA_1_002','Percent of health facilities with essential medicine',68,'O.R.Tambo'),
('level2','ZA_2_00103',2009,'level1','ZA_1_001','Percent of health facilities with essential medicine',100,'Overberg'),
('level2','ZA_2_00307',2009,'level1','ZA_1_003','Percent of health facilities with essential medicine',100,'Pixley ka Seme'),
('level2','ZA_2_00639',2009,'level1','ZA_1_006','Percent of health facilities with essential medicine',99,'Dr Ruth Segomotsi Mompati'),
('level2','ZA_2_00210',2009,'level1','ZA_1_002','Percent of health facilities with essential medicine',95,'Sarah Baartman'),
('level2','ZA_2_00742',2009,'level1','ZA_1_007','Percent of health facilities with essential medicine',93,'Sedibeng'),
('level2','ZA_2_00947',2009,'level1','ZA_1_009','Percent of health facilities with essential medicine',61,'Sekhukhune'),
('country','ZA',2009,'continent','AFR','Percent of health facilities with essential medicine',82,'South Africa'),
('level2','ZA_2_00419',2009,'level1','ZA_1_004','Percent of health facilities with essential medicine',78,'Thabo Mofutsanyane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Percent of health facilities with essential medicine',84,'City of Tshwane'),
('level2','ZA_2_00521',2009,'level1','ZA_1_005','Percent of health facilities with essential medicine',89,'Ugu'),
('level2','ZA_2_00934',2009,'level1','ZA_1_009','Percent of health facilities with essential medicine',29,'Vhembe'),
('level2','ZA_2_00936',2009,'level1','ZA_1_009','Percent of health facilities with essential medicine',75,'Waterberg'),
('level2','ZA_2_00101',2009,'level1','ZA_1_001','Percent of health facilities with essential medicine',98,'West Coast'),
('level2','ZA_2_00748',2009,'level1','ZA_1_007','Percent of health facilities with essential medicine',96,'West Rand'),
('level1','ZA_1_001',2009,'country','ZA','Percent of health facilities with essential medicine',96,'Western Cape'),
('level2','ZA_2_00416',2009,'level1','ZA_1_004','Percent of health facilities with essential medicine',72,'Xhariep'),
('level2','ZA_2_00308',2009,'level1','ZA_1_003','Percent of health facilities with essential medicine',100,'Z F Mgcawu'),
('level2','ZA_2_00526',2009,'level1','ZA_1_005','Percent of health facilities with essential medicine',87,'Zululand'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Percent of health facilities with essential medicine',94,'eThekwini'),
('level2','ZA_2_00529',2009,'level1','ZA_1_005','Percent of health facilities with essential medicine',82,'iLembe'),
('level2','ZA_2_00522',2009,'level1','ZA_1_005','Percent of health facilities with essential medicine',90,'Umgungundlovu'),
('level2','ZA_2_00527',2009,'level1','ZA_1_005','Percent of health facilities with essential medicine',64,'Umkhanyakude'),
('level2','ZA_2_00524',2009,'level1','ZA_1_005','Percent of health facilities with essential medicine',90,'Umzinyathi'),
('level2','ZA_2_00523',2009,'level1','ZA_1_005','Percent of health facilities with essential medicine',91,'Uthukela') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allEssentialMedicines','"District Health Barometer, 2018/19"','https://open.africa/dataset/district-health-barometer-2018-19/resource/4f459088-f897-443e-afa1-5d299b8cc7b0') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allEssentialMedicines','"District Health Barometer, 2018/19"','https://open.africa/dataset/district-health-barometer-2018-19/resource/4f459088-f897-443e-afa1-5d299b8cc7b0') ON CONFLICT DO NOTHING;
