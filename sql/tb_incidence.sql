SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.tb_incidence DROP CONSTRAINT IF EXISTS pk_tb_incidence;
DROP TABLE IF EXISTS public.tb_incidence;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.tb_incidence (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.tb_incidence ADD CONSTRAINT pk_tb_incidence PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.tb_incidence VALUES
('level2','ZA_2_00244',2009,'level1','ZA_1_002','TB Incidence',491,'Alfred Nzo'),
('level2','ZA_2_00525',2009,'level1','ZA_1_005','TB Incidence',484,'Amajuba'),
('level2','ZA_2_00212',2009,'level1','ZA_1_002','TB Incidence',639,'Amathole'),
('level2','ZA_2_00637',2009,'level1','ZA_1_006','TB Incidence',419,'Bojanala'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','TB Incidence',743,'Buffalo City'),
('level2','ZA_2_00210',2009,'level1','ZA_1_002','TB Incidence',1022,'Sarah Baartman'),
('level2','ZA_2_00102',2009,'level1','ZA_1_001','TB Incidence',880,'Cape Winelands'),
('level2','ZA_2_00935',2009,'level1','ZA_1_009','TB Incidence',328,'Capricorn'),
('level2','ZA_2_00105',2009,'level1','ZA_1_001','TB Incidence',814,'Central Karoo'),
('level2','ZA_2_00213',2009,'level1','ZA_1_002','TB Incidence',623,'Chris Hani'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','TB Incidence',596,'City of Cape Town'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','TB Incidence',326,'City of Johannesburg'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','TB Incidence',330,'City of Tshwane'),
('level2','ZA_2_00640',2009,'level1','ZA_1_006','TB Incidence',690,'Dr Kenneth Kaunda'),
('level2','ZA_2_00639',2009,'level1','ZA_1_006','TB Incidence',661,'Dr Ruth Segomotsi Mompati'),
('level1','ZA_1_002',2009,'country','ZA','TB Incidence',692,'Eastern Cape'),
('level2','ZA_2_00104',2009,'level1','ZA_1_001','TB Incidence',809,'Garden Route'),
('level2','ZA_2_00832',2009,'level1','ZA_1_008','TB Incidence',449,'Ehlanzeni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','TB Incidence',298,'Ekurhuleni'),
('level2','ZA_2_00420',2009,'level1','ZA_1_004','TB Incidence',462,'Fezile Dabi'),
('level2','ZA_2_00309',2009,'level1','ZA_1_003','TB Incidence',424,'Frances Baard'),
('level1','ZA_1_004',2009,'country','ZA','TB Incidence',575,'Free State'),
('level1','ZA_1_007',2009,'country','ZA','TB Incidence',330,'Gauteng'),
('level2','ZA_2_00830',2009,'level1','ZA_1_008','TB Incidence',460,'Gert Sibande'),
('level2','ZA_2_00214',2009,'level1','ZA_1_002','TB Incidence',550,'Joe Gqabi'),
('level2','ZA_2_00345',2009,'level1','ZA_1_003','TB Incidence',590,'John Taolo Gaetsewe'),
('level1','ZA_1_005',2009,'country','ZA','TB Incidence',685,'KwaZulu-Natal'),
('level2','ZA_2_00418',2009,'level1','ZA_1_004','TB Incidence',691,'Lejweleputswa'),
('level1','ZA_1_009',2009,'country','ZA','TB Incidence',301,'Limpopo'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','TB Incidence',616,'Mangaung'),
('level2','ZA_2_00933',2009,'level1','ZA_1_009','TB Incidence',287,'Mopani'),
('level1','ZA_1_008',2009,'country','ZA','TB Incidence',402,'Mpumalanga'),
('level2','ZA_2_00306',2009,'level1','ZA_1_003','TB Incidence',536,'Namakwa'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','TB Incidence',938,'Nelson Mandela Bay'),
('level2','ZA_2_00638',2009,'level1','ZA_1_006','TB Incidence',526,'Ngaka Modiri Molema'),
('level2','ZA_2_00831',2009,'level1','ZA_1_008','TB Incidence',298,'Nkangala'),
('level1','ZA_1_006',2009,'country','ZA','TB Incidence',528,'North West'),
('level1','ZA_1_003',2009,'country','ZA','TB Incidence',645,'Northern Cape'),
('level2','ZA_2_00215',2009,'level1','ZA_1_002','TB Incidence',571,'O.R.Tambo'),
('level2','ZA_2_00103',2009,'level1','ZA_1_001','TB Incidence',752,'Overberg'),
('level2','ZA_2_00307',2009,'level1','ZA_1_003','TB Incidence',943,'Pixley ka Seme'),
('level2','ZA_2_00742',2009,'level1','ZA_1_007','TB Incidence',406,'Sedibeng'),
('level2','ZA_2_00947',2009,'level1','ZA_1_009','TB Incidence',263,'Sekhukhune'),
('level2','ZA_2_00543',2009,'level1','ZA_1_005','TB Incidence',678,'Harry Gwala'),
('country','ZA',2009,'continent','AFR','TB Incidence',520,'South Africa'),
('level2','ZA_2_00521',2009,'level1','ZA_1_005','TB Incidence',810,'Ugu'),
('level2','ZA_2_00522',2009,'level1','ZA_1_005','TB Incidence',678,'Umgungundlovu'),
('level2','ZA_2_00527',2009,'level1','ZA_1_005','TB Incidence',577,'Umkhanyakude'),
('level2','ZA_2_00524',2009,'level1','ZA_1_005','TB Incidence',518,'Umzinyathi'),
('level2','ZA_2_00523',2009,'level1','ZA_1_005','TB Incidence',533,'Uthukela'),
('level2','ZA_2_00528',2009,'level1','ZA_1_005','TB Incidence',859,'King Cetshwayo'),
('level2','ZA_2_00934',2009,'level1','ZA_1_009','TB Incidence',214,'Vhembe'),
('level2','ZA_2_00936',2009,'level1','ZA_1_009','TB Incidence',493,'Waterberg'),
('level2','ZA_2_00101',2009,'level1','ZA_1_001','TB Incidence',837,'West Coast'),
('level2','ZA_2_00748',2009,'level1','ZA_1_007','TB Incidence',397,'West Rand'),
('level1','ZA_1_001',2009,'country','ZA','TB Incidence',681,'Western Cape'),
('level2','ZA_2_00416',2009,'level1','ZA_1_004','TB Incidence',784,'Xhariep'),
('level2','ZA_2_00308',2009,'level1','ZA_1_003','TB Incidence',856,'Z F Mgcawu'),
('level2','ZA_2_00526',2009,'level1','ZA_1_005','TB Incidence',683,'Zululand'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','TB Incidence',698,'eThekwini'),
('level2','ZA_2_00529',2009,'level1','ZA_1_005','TB Incidence',801,'iLembe') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allTbIncidences','"District Health Barometer, 2015/16"','https://open.africa/dataset/district-health-barometer-2015-16/resource/3cd9647e-8075-4403-9860-45abc800ed3a') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allTbIncidences','"District Health Barometer, 2015/16"','https://open.africa/dataset/district-health-barometer-2015-16/resource/3cd9647e-8075-4403-9860-45abc800ed3a') ON CONFLICT DO NOTHING;
