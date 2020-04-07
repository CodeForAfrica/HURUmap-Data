SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.health_facilities_with_ideal_clinic_status DROP CONSTRAINT IF EXISTS pk_health_facilities_with_ideal_clinic_status;
DROP TABLE IF EXISTS public.health_facilities_with_ideal_clinic_status;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.health_facilities_with_ideal_clinic_status (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.health_facilities_with_ideal_clinic_status VALUES
('level2','ZA_2_00244',2009,'level1','ZA_1_002','Percent of facilities with ideal clinic status',16.2,'Alfred Nzo'),
('level2','ZA_2_00525',2009,'level1','ZA_1_005','Percent of facilities with ideal clinic status',100,'Amajuba'),
('level2','ZA_2_00212',2009,'level1','ZA_1_002','Percent of facilities with ideal clinic status',37.2,'Amathole'),
('level2','ZA_2_00637',2009,'level1','ZA_1_006','Percent of facilities with ideal clinic status',24.6,'Bojanala'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Percent of facilities with ideal clinic status',15.2,'Buffalo City'),
('level2','ZA_2_00102',2009,'level1','ZA_1_001','Percent of facilities with ideal clinic status',60,'Cape Winelands'),
('level2','ZA_2_00935',2009,'level1','ZA_1_009','Percent of facilities with ideal clinic status',65,'Capricorn'),
('level2','ZA_2_00105',2009,'level1','ZA_1_001','Percent of facilities with ideal clinic status',100,'Central Karoo'),
('level2','ZA_2_00213',2009,'level1','ZA_1_002','Percent of facilities with ideal clinic status',16.4,'Chris Hani'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Percent of facilities with ideal clinic status',75,'City of Cape Town'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Percent of facilities with ideal clinic status',74.6,'City of Johannesburg'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Percent of facilities with ideal clinic status',98.6,'City of Tshwane'),
('level2','ZA_2_00640',2009,'level1','ZA_1_006','Percent of facilities with ideal clinic status',92.5,'Dr Kenneth Kaunda'),
('level2','ZA_2_00639',2009,'level1','ZA_1_006','Percent of facilities with ideal clinic status',59,'Dr Ruth Segomotsi Mompati'),
('level1','ZA_1_002',2009,'country','ZA','Percent of facilities with ideal clinic status',32.4,'Eastern Cape'),
('level2','ZA_2_00832',2009,'level1','ZA_1_008','Percent of facilities with ideal clinic status',21.5,'Ehlanzeni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Percent of facilities with ideal clinic status',100,'Ekurhuleni'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Percent of facilities with ideal clinic status',60.7,'eThekwini'),
('level2','ZA_2_00420',2009,'level1','ZA_1_004','Percent of facilities with ideal clinic status',61.9,'Fezile Dabi'),
('level2','ZA_2_00309',2009,'level1','ZA_1_003','Percent of facilities with ideal clinic status',58.6,'Frances Baard'),
('level1','ZA_1_004',2009,'country','ZA','Percent of facilities with ideal clinic status',75.7,'Free State'),
('level1','ZA_1_007',2009,'country','ZA','Percent of facilities with ideal clinic status',89.2,'Gauteng'),
('level2','ZA_2_00830',2009,'level1','ZA_1_008','Percent of facilities with ideal clinic status',89.6,'Gert Sibande'),
('level2','ZA_2_00529',2009,'level1','ZA_1_005','Percent of facilities with ideal clinic status',83.3,'iLembe'),
('level2','ZA_2_00214',2009,'level1','ZA_1_002','Percent of facilities with ideal clinic status',46.2,'Joe Gqabi'),
('level2','ZA_2_00345',2009,'level1','ZA_1_003','Percent of facilities with ideal clinic status',52.4,'John Taolo Gaetsewe'),
('level1','ZA_1_005',2009,'country','ZA','Percent of facilities with ideal clinic status',76.2,'KwaZulu-Natal'),
('level2','ZA_2_00418',2009,'level1','ZA_1_004','Percent of facilities with ideal clinic status',61.4,'Lejweleputswa'),
('level1','ZA_1_009',2009,'country','ZA','Percent of facilities with ideal clinic status',34.4,'Limpopo'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Percent of facilities with ideal clinic status',63,'Mangaung'),
('level2','ZA_2_00933',2009,'level1','ZA_1_009','Percent of facilities with ideal clinic status',10.5,'Mopani'),
('level1','ZA_1_008',2009,'country','ZA','Percent of facilities with ideal clinic status',46.2,'Mpumalanga'),
('level2','ZA_2_00306',2009,'level1','ZA_1_003','Percent of facilities with ideal clinic status',24.2,'Namakwa'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Percent of facilities with ideal clinic status',58.3,'Nelson Mandela Bay'),
('level2','ZA_2_00638',2009,'level1','ZA_1_006','Percent of facilities with ideal clinic status',43.3,'Ngaka Modiri Molema'),
('level2','ZA_2_00831',2009,'level1','ZA_1_008','Percent of facilities with ideal clinic status',42.2,'Nkangala'),
('level1','ZA_1_006',2009,'country','ZA','Percent of facilities with ideal clinic status',45.6,'North West'),
('level1','ZA_1_003',2009,'country','ZA','Percent of facilities with ideal clinic status',57.1,'Northern Cape'),
('level2','ZA_2_00215',2009,'level1','ZA_1_002','Percent of facilities with ideal clinic status',40.4,'O.R.Tambo'),
('level2','ZA_2_00103',2009,'level1','ZA_1_001','Percent of facilities with ideal clinic status',100,'Overberg'),
('level2','ZA_2_00307',2009,'level1','ZA_1_003','Percent of facilities with ideal clinic status',80.6,'Pixley ka Seme'),
('level2','ZA_2_00742',2009,'level1','ZA_1_007','Percent of facilities with ideal clinic status',100,'Sedibeng'),
('level2','ZA_2_00947',2009,'level1','ZA_1_009','Percent of facilities with ideal clinic status',38.2,'Sekhukhune'),
('country','ZA',2009,'continent','AFR','Percent of facilities with ideal clinic status',55.4,'South Africa'),
('level2','ZA_2_00419',2009,'level1','ZA_1_004','Percent of facilities with ideal clinic status',94.5,'Thabo Mofutsanyane'),
('level2','ZA_2_00521',2009,'level1','ZA_1_005','Percent of facilities with ideal clinic status',62.3,'Ugu'),
('level2','ZA_2_00522',2009,'level1','ZA_1_005','Percent of facilities with ideal clinic status',90.4,'Umgungundlovu'),
('level2','ZA_2_00527',2009,'level1','ZA_1_005','Percent of facilities with ideal clinic status',78,'Umkhanyakude'),
('level2','ZA_2_00524',2009,'level1','ZA_1_005','Percent of facilities with ideal clinic status',100,'Umzinyathi'),
('level2','ZA_2_00523',2009,'level1','ZA_1_005','Percent of facilities with ideal clinic status',81.1,'Uthukela'),
('level2','ZA_2_00934',2009,'level1','ZA_1_009','Percent of facilities with ideal clinic status',29.3,'Vhembe'),
('level2','ZA_2_00936',2009,'level1','ZA_1_009','Percent of facilities with ideal clinic status',30.2,'Waterberg'),
('level2','ZA_2_00101',2009,'level1','ZA_1_001','Percent of facilities with ideal clinic status',40.7,'West Coast'),
('level2','ZA_2_00748',2009,'level1','ZA_1_007','Percent of facilities with ideal clinic status',81.3,'West Rand'),
('level1','ZA_1_001',2009,'country','ZA','Percent of facilities with ideal clinic status',68.3,'Western Cape'),
('level2','ZA_2_00416',2009,'level1','ZA_1_004','Percent of facilities with ideal clinic status',100,'Xhariep'),
('level2','ZA_2_00308',2009,'level1','ZA_1_003','Percent of facilities with ideal clinic status',76.2,'Z F Mgcawu'),
('level2','ZA_2_00526',2009,'level1','ZA_1_005','Percent of facilities with ideal clinic status',87.5,'Zululand');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allHealthFacilitiesWithIdealClinicStatuses','"District Health Barometer, 2018/19"','https://open.africa/dataset/district-health-barometer-2018-19/resource/05955a9c-ba98-40aa-9c70-c6f2619668b4') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allHealthFacilitiesWithIdealClinicStatuses','"District Health Barometer, 2018/19"','https://open.africa/dataset/district-health-barometer-2018-19/resource/05955a9c-ba98-40aa-9c70-c6f2619668b4') on conflict do nothing;

ALTER TABLE ONLY public.health_facilities_with_ideal_clinic_status ADD CONSTRAINT pk_health_facilities_with_ideal_clinic_status PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);
