SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.population_density DROP CONSTRAINT IF EXISTS pk_population_density;
DROP TABLE IF EXISTS public.population_density;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.population_density (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.population_density ADD CONSTRAINT pk_population_density PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.population_density VALUES
('level2','ZA_2_00244',2009,'level1','ZA_1_002','Population density',80.4,'Alfred Nzo'),
('level2','ZA_2_00525',2009,'level1','ZA_1_005','Population density',76.3,'Amajuba'),
('level2','ZA_2_00212',2009,'level1','ZA_1_002','Population density',40.6,'Amathole'),
('level2','ZA_2_00637',2009,'level1','ZA_1_006','Population density',89.6,'Bojanala'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Population density',329.3,'Buffalo City'),
('level2','ZA_2_00210',2009,'level1','ZA_1_002','Population density',8.2,'Sarah Baartman'),
('level2','ZA_2_00102',2009,'level1','ZA_1_001','Population density',40.1,'Cape Winelands'),
('level2','ZA_2_00935',2009,'level1','ZA_1_009','Population density',60.7,'Capricorn'),
('level2','ZA_2_00105',2009,'level1','ZA_1_001','Population density',1.9,'Central Karoo'),
('level2','ZA_2_00213',2009,'level1','ZA_1_002','Population density',23.1,'Chris Hani'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Population density',1641.5,'City of Cape Town'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Population density',3008.8,'City of Johannesburg'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Population density',520,'City of Tshwane'),
('level2','ZA_2_00640',2009,'level1','ZA_1_006','Population density',50.3,'Dr Kenneth Kaunda'),
('level2','ZA_2_00639',2009,'level1','ZA_1_006','Population density',10.4,'Dr Ruth Segomotsi Mompati'),
('level1','ZA_1_002',2009,'country','ZA','Population density',41.3,'Eastern Cape'),
('level2','ZA_2_00104',2009,'level1','ZA_1_001','Population density',26.1,'Garden Route'),
('level2','ZA_2_00832',2009,'level1','ZA_1_008','Population density',62.4,'Ehlanzeni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Population density',1710.7,'Ekurhuleni'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Population density',1615.8,'eThekwini'),
('level2','ZA_2_00420',2009,'level1','ZA_1_004','Population density',23.8,'Fezile Dabi'),
('level2','ZA_2_00309',2009,'level1','ZA_1_003','Population density',30,'Frances Baard'),
('level1','ZA_1_004',2009,'country','ZA','Population density',21.8,'Free State'),
('level1','ZA_1_007',2009,'country','ZA','Population density',737,'Gauteng'),
('level2','ZA_2_00830',2009,'level1','ZA_1_008','Population density',35.4,'Gert Sibande'),
('level2','ZA_2_00529',2009,'level1','ZA_1_005','Population density',199.7,'iLembe'),
('level2','ZA_2_00214',2009,'level1','ZA_1_002','Population density',14.4,'Joe Gqabi'),
('level2','ZA_2_00345',2009,'level1','ZA_1_003','Population density',8.8,'John Taolo Gaetsewe'),
('level1','ZA_1_005',2009,'country','ZA','Population density',117.2,'KwaZulu-Natal'),
('level2','ZA_2_00418',2009,'level1','ZA_1_004','Population density',20.1,'Lejweleputswa'),
('level1','ZA_1_009',2009,'country','ZA','Population density',46.1,'Limpopo'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Population density',125.4,'Mangaung'),
('level2','ZA_2_00933',2009,'level1','ZA_1_009','Population density',57.4,'Mopani'),
('level1','ZA_1_008',2009,'country','ZA','Population density',56.6,'Mpumalanga'),
('level2','ZA_2_00306',2009,'level1','ZA_1_003','Population density',0.9,'Namakwa'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Population density',644.8,'Nelson Mandela Bay'),
('level2','ZA_2_00638',2009,'level1','ZA_1_006','Population density',31.3,'Ngaka Modiri Molema'),
('level2','ZA_2_00831',2009,'level1','ZA_1_008','Population density',85.5,'Nkangala'),
('level1','ZA_1_006',2009,'country','ZA','Population density',35.6,'North West'),
('level1','ZA_1_003',2009,'country','ZA','Population density',3.2,'Northern Cape'),
('level2','ZA_2_00215',2009,'level1','ZA_1_002','Population density',119.8,'O.R.Tambo'),
('level2','ZA_2_00103',2009,'level1','ZA_1_001','Population density',23.3,'Overberg'),
('level2','ZA_2_00307',2009,'level1','ZA_1_003','Population density',1.9,'Pixley ka Seme'),
('level2','ZA_2_00742',2009,'level1','ZA_1_007','Population density',227.6,'Sedibeng'),
('level2','ZA_2_00947',2009,'level1','ZA_1_009','Population density',85.7,'Sekhukhune'),
('level2','ZA_2_00543',2009,'level1','ZA_1_005','Population density',48.1,'Harry Gwala'),
('country','ZA',2009,'continent','AFR','Population density',45.3,'South Africa'),
('level2','ZA_2_00419',2009,'level1','ZA_1_004','Population density',23.3,'Thabo Mofutsanyane'),
('level2','ZA_2_00521',2009,'level1','ZA_1_005','Population density',148.3,'Ugu'),
('level2','ZA_2_00522',2009,'level1','ZA_1_005','Population density',114.4,'Umgungundlovu'),
('level2','ZA_2_00527',2009,'level1','ZA_1_005','Population density',49.4,'Umkhanyakude'),
('level2','ZA_2_00524',2009,'level1','ZA_1_005','Population density',64.1,'Umzinyathi'),
('level2','ZA_2_00523',2009,'level1','ZA_1_005','Population density',61.9,'Uthukela'),
('level2','ZA_2_00528',2009,'level1','ZA_1_005','Population density',117.4,'King Cetshwayo'),
('level2','ZA_2_00934',2009,'level1','ZA_1_009','Population density',53.9,'Vhembe'),
('level2','ZA_2_00936',2009,'level1','ZA_1_009','Population density',16.5,'Waterberg'),
('level2','ZA_2_00101',2009,'level1','ZA_1_001','Population density',13.9,'West Coast'),
('level2','ZA_2_00748',2009,'level1','ZA_1_007','Population density',203.5,'West Rand'),
('level1','ZA_1_001',2009,'country','ZA','Population density',47.7,'Western Cape'),
('level2','ZA_2_00416',2009,'level1','ZA_1_004','Population density',3.3,'Xhariep'),
('level2','ZA_2_00308',2009,'level1','ZA_1_003','Population density',6.7,'Z F Mgcawu'),
('level2','ZA_2_00526',2009,'level1','ZA_1_005','Population density',59.8,'Zululand') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allPopulationDensities','"Community Survey, 2016"','https://open.africa/dataset/community-survey-south-africa-2016/resource/53b6e7de-522e-4ee9-8b1e-7a0d695d39b0') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allPopulationDensities','"Community Survey, 2016"','https://open.africa/dataset/community-survey-south-africa-2016/resource/53b6e7de-522e-4ee9-8b1e-7a0d695d39b0') ON CONFLICT DO NOTHING;
