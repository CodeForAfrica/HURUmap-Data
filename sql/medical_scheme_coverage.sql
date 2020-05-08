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

ALTER TABLE ONLY public.medical_scheme_coverage ADD CONSTRAINT pk_medical_scheme_coverage PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.medical_scheme_coverage VALUES
('level2','ZA_2_00244',2009,'level1','ZA_1_002','Medical scheme coverage',3.8,'Alfred Nzo'),
('level2','ZA_2_00525',2009,'level1','ZA_1_005','Medical scheme coverage',7.4,'Amajuba'),
('level2','ZA_2_00212',2009,'level1','ZA_1_002','Medical scheme coverage',4.3,'Amathole'),
('level2','ZA_2_00637',2009,'level1','ZA_1_006','Medical scheme coverage',14,'Bojanala'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Medical scheme coverage',22.4,'Buffalo City'),
('level2','ZA_2_00210',2009,'level1','ZA_1_002','Medical scheme coverage',8.8,'Sarah Baartman'),
('level2','ZA_2_00102',2009,'level1','ZA_1_001','Medical scheme coverage',16.4,'Cape Winelands'),
('level2','ZA_2_00935',2009,'level1','ZA_1_009','Medical scheme coverage',8.3,'Capricorn'),
('level2','ZA_2_00105',2009,'level1','ZA_1_001','Medical scheme coverage',12.5,'Central Karoo'),
('level2','ZA_2_00213',2009,'level1','ZA_1_002','Medical scheme coverage',4.9,'Chris Hani'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Medical scheme coverage',22.2,'City of Cape Town'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Medical scheme coverage',22.2,'City of Johannesburg'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Medical scheme coverage',30.6,'City of Tshwane'),
('level2','ZA_2_00640',2009,'level1','ZA_1_006','Medical scheme coverage',12.8,'Dr Kenneth Kaunda'),
('level2','ZA_2_00639',2009,'level1','ZA_1_006','Medical scheme coverage',7.3,'Dr Ruth Segomotsi Mompati'),
('level1','ZA_1_002',2009,'country','ZA','Medical scheme coverage',9.8,'Eastern Cape'),
('level2','ZA_2_00104',2009,'level1','ZA_1_001','Medical scheme coverage',16.5,'Garden Route'),
('level2','ZA_2_00832',2009,'level1','ZA_1_008','Medical scheme coverage',10.2,'Ehlanzeni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Medical scheme coverage',23.8,'Ekurhuleni'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Medical scheme coverage',18.9,'eThekwini'),
('level2','ZA_2_00420',2009,'level1','ZA_1_004','Medical scheme coverage',13.2,'Fezile Dabi'),
('level2','ZA_2_00309',2009,'level1','ZA_1_003','Medical scheme coverage',15.7,'Frances Baard'),
('level1','ZA_1_004',2009,'country','ZA','Medical scheme coverage',13.5,'Free State'),
('level1','ZA_1_007',2009,'country','ZA','Medical scheme coverage',24.6,'Gauteng'),
('level2','ZA_2_00830',2009,'level1','ZA_1_008','Medical scheme coverage',13.1,'Gert Sibande'),
('level2','ZA_2_00529',2009,'level1','ZA_1_005','Medical scheme coverage',8.6,'iLembe'),
('level2','ZA_2_00214',2009,'level1','ZA_1_002','Medical scheme coverage',5,'Joe Gqabi'),
('level2','ZA_2_00345',2009,'level1','ZA_1_003','Medical scheme coverage',13.9,'John Taolo Gaetsewe'),
('level1','ZA_1_005',2009,'country','ZA','Medical scheme coverage',11.2,'KwaZulu-Natal'),
('level2','ZA_2_00418',2009,'level1','ZA_1_004','Medical scheme coverage',12,'Lejweleputswa'),
('level1','ZA_1_009',2009,'country','ZA','Medical scheme coverage',7.2,'Limpopo'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Medical scheme coverage',20,'Mangaung'),
('level2','ZA_2_00933',2009,'level1','ZA_1_009','Medical scheme coverage',6.8,'Mopani'),
('level1','ZA_1_008',2009,'country','ZA','Medical scheme coverage',12.5,'Mpumalanga'),
('level2','ZA_2_00306',2009,'level1','ZA_1_003','Medical scheme coverage',17.5,'Namakwa'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Medical scheme coverage',20.4,'Nelson Mandela Bay'),
('level2','ZA_2_00638',2009,'level1','ZA_1_006','Medical scheme coverage',9.7,'Ngaka Modiri Molema'),
('level2','ZA_2_00831',2009,'level1','ZA_1_008','Medical scheme coverage',14.8,'Nkangala'),
('level1','ZA_1_006',2009,'country','ZA','Medical scheme coverage',11.9,'North West'),
('level1','ZA_1_003',2009,'country','ZA','Medical scheme coverage',15.1,'Northern Cape'),
('level2','ZA_2_00215',2009,'level1','ZA_1_002','Medical scheme coverage',4.2,'O.R.Tambo'),
('level2','ZA_2_00103',2009,'level1','ZA_1_001','Medical scheme coverage',16.4,'Overberg'),
('level2','ZA_2_00307',2009,'level1','ZA_1_003','Medical scheme coverage',13.1,'Pixley ka Seme'),
('level2','ZA_2_00742',2009,'level1','ZA_1_007','Medical scheme coverage',20.8,'Sedibeng'),
('level2','ZA_2_00947',2009,'level1','ZA_1_009','Medical scheme coverage',5.6,'Sekhukhune'),
('level2','ZA_2_00543',2009,'level1','ZA_1_005','Medical scheme coverage',5.6,'Harry Gwala'),
('country','ZA',2009,'continent','AFR','Medical scheme coverage',15.4,'South Africa'),
('level2','ZA_2_00521',2009,'level1','ZA_1_005','Medical scheme coverage',7.1,'Ugu'),
('level2','ZA_2_00522',2009,'level1','ZA_1_005','Medical scheme coverage',11,'Umgungundlovu'),
('level2','ZA_2_00527',2009,'level1','ZA_1_005','Medical scheme coverage',5,'Umkhanyakude'),
('level2','ZA_2_00524',2009,'level1','ZA_1_005','Medical scheme coverage',5.4,'Umzinyathi'),
('level2','ZA_2_00523',2009,'level1','ZA_1_005','Medical scheme coverage',6.4,'Uthukela'),
('level2','ZA_2_00528',2009,'level1','ZA_1_005','Medical scheme coverage',8.7,'King Cetshwayo'),
('level2','ZA_2_00934',2009,'level1','ZA_1_009','Medical scheme coverage',6.6,'Vhembe'),
('level2','ZA_2_00936',2009,'level1','ZA_1_009','Medical scheme coverage',9.1,'Waterberg'),
('level2','ZA_2_00101',2009,'level1','ZA_1_001','Medical scheme coverage',17.3,'West Coast'),
('level2','ZA_2_00748',2009,'level1','ZA_1_007','Medical scheme coverage',24.1,'West Rand'),
('level1','ZA_1_001',2009,'country','ZA','Medical scheme coverage',20.1,'Western Cape'),
('level2','ZA_2_00416',2009,'level1','ZA_1_004','Medical scheme coverage',10.5,'Xhariep'),
('level2','ZA_2_00308',2009,'level1','ZA_1_003','Medical scheme coverage',15.8,'Z F Mgcawu'),
('level2','ZA_2_00526',2009,'level1','ZA_1_005','Medical scheme coverage',5.2,'Zululand') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allMedicalSchemeCoverages','"South African Health Review, 2019"','https://open.africa/dataset/south-african-health-review-2019/resource/abb8ab4e-d06e-44f0-8e7a-1cb00add467b') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allMedicalSchemeCoverages','"South African Health Review, 2019"','https://open.africa/dataset/south-african-health-review-2019/resource/abb8ab4e-d06e-44f0-8e7a-1cb00add467b') ON CONFLICT DO NOTHING;
