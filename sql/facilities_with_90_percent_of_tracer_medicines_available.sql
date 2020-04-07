SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.facilities_with_90_percent_of_tracer_medicines_available DROP CONSTRAINT IF EXISTS pk_facilities_with_90_percent_of_tracer_medicines_available;
DROP TABLE IF EXISTS public.facilities_with_90_percent_of_tracer_medicines_available;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.facilities_with_90_percent_of_tracer_medicines_available (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.facilities_with_90_percent_of_tracer_medicines_available VALUES
('level2','ZA_2_00244',2009,'level1','ZA_1_002','Percentage of fixed PHC facilities with 90% of tracer medicines available',83.8,'Alfred Nzo'),
('level2','ZA_2_00525',2009,'level1','ZA_1_005','Percentage of fixed PHC facilities with 90% of tracer medicines available',100,'Amajuba'),
('level2','ZA_2_00212',2009,'level1','ZA_1_002','Percentage of fixed PHC facilities with 90% of tracer medicines available',85.8,'Amathole'),
('level2','ZA_2_00637',2009,'level1','ZA_1_006','Percentage of fixed PHC facilities with 90% of tracer medicines available',54.2,'Bojanala'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Percentage of fixed PHC facilities with 90% of tracer medicines available',88.6,'Buffalo City'),
('level2','ZA_2_00102',2009,'level1','ZA_1_001','Percentage of fixed PHC facilities with 90% of tracer medicines available',84.4,'Cape Winelands'),
('level2','ZA_2_00935',2009,'level1','ZA_1_009','Percentage of fixed PHC facilities with 90% of tracer medicines available',80,'Capricorn'),
('level2','ZA_2_00105',2009,'level1','ZA_1_001','Percentage of fixed PHC facilities with 90% of tracer medicines available',100,'Central Karoo'),
('level2','ZA_2_00213',2009,'level1','ZA_1_002','Percentage of fixed PHC facilities with 90% of tracer medicines available',71.7,'Chris Hani'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Percentage of fixed PHC facilities with 90% of tracer medicines available',98.4,'City of Cape Town'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Percentage of fixed PHC facilities with 90% of tracer medicines available',100,'City of Johannesburg'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Percentage of fixed PHC facilities with 90% of tracer medicines available',93.2,'City of Tshwane'),
('level2','ZA_2_00640',2009,'level1','ZA_1_006','Percentage of fixed PHC facilities with 90% of tracer medicines available',95,'Dr Kenneth Kaunda'),
('level2','ZA_2_00639',2009,'level1','ZA_1_006','Percentage of fixed PHC facilities with 90% of tracer medicines available',76.7,'Dr Ruth Segomotsi Mompati'),
('level1','ZA_1_002',2009,'country','ZA','Percentage of fixed PHC facilities with 90% of tracer medicines available',79.6,'Eastern Cape'),
('level2','ZA_2_00832',2009,'level1','ZA_1_008','Percentage of fixed PHC facilities with 90% of tracer medicines available',82.6,'Ehlanzeni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Percentage of fixed PHC facilities with 90% of tracer medicines available',98.6,'Ekurhuleni'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Percentage of fixed PHC facilities with 90% of tracer medicines available',97.3,'eThekwini'),
('level2','ZA_2_00420',2009,'level1','ZA_1_004','Percentage of fixed PHC facilities with 90% of tracer medicines available',97.6,'Fezile Dabi'),
('level2','ZA_2_00309',2009,'level1','ZA_1_003','Percentage of fixed PHC facilities with 90% of tracer medicines available',100,'Frances Baard'),
('level1','ZA_1_004',2009,'country','ZA','Percentage of fixed PHC facilities with 90% of tracer medicines available',97.7,'Free State'),
('level1','ZA_1_007',2009,'country','ZA','Percentage of fixed PHC facilities with 90% of tracer medicines available',97.6,'Gauteng'),
('level2','ZA_2_00830',2009,'level1','ZA_1_008','Percentage of fixed PHC facilities with 90% of tracer medicines available',94.8,'Gert Sibande'),
('level2','ZA_2_00529',2009,'level1','ZA_1_005','Percentage of fixed PHC facilities with 90% of tracer medicines available',100,'iLembe'),
('level2','ZA_2_00214',2009,'level1','ZA_1_002','Percentage of fixed PHC facilities with 90% of tracer medicines available',78.8,'Joe Gqabi'),
('level2','ZA_2_00345',2009,'level1','ZA_1_003','Percentage of fixed PHC facilities with 90% of tracer medicines available',64.3,'John Taolo Gaetsewe'),
('level1','ZA_1_005',2009,'country','ZA','Percentage of fixed PHC facilities with 90% of tracer medicines available',96.5,'KwaZulu-Natal'),
('level2','ZA_2_00418',2009,'level1','ZA_1_004','Percentage of fixed PHC facilities with 90% of tracer medicines available',95.5,'Lejweleputswa'),
('level1','ZA_1_009',2009,'country','ZA','Percentage of fixed PHC facilities with 90% of tracer medicines available',67.8,'Limpopo'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Percentage of fixed PHC facilities with 90% of tracer medicines available',97.8,'Mangaung'),
('level2','ZA_2_00933',2009,'level1','ZA_1_009','Percentage of fixed PHC facilities with 90% of tracer medicines available',65.7,'Mopani'),
('level1','ZA_1_008',2009,'country','ZA','Percentage of fixed PHC facilities with 90% of tracer medicines available',88.2,'Mpumalanga'),
('level2','ZA_2_00306',2009,'level1','ZA_1_003','Percentage of fixed PHC facilities with 90% of tracer medicines available',72.7,'Namakwa'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Percentage of fixed PHC facilities with 90% of tracer medicines available',95.8,'Nelson Mandela Bay'),
('level2','ZA_2_00638',2009,'level1','ZA_1_006','Percentage of fixed PHC facilities with 90% of tracer medicines available',63.3,'Ngaka Modiri Molema'),
('level2','ZA_2_00831',2009,'level1','ZA_1_008','Percentage of fixed PHC facilities with 90% of tracer medicines available',90,'Nkangala'),
('level1','ZA_1_006',2009,'country','ZA','Percentage of fixed PHC facilities with 90% of tracer medicines available',66.6,'North West'),
('level1','ZA_1_003',2009,'country','ZA','Percentage of fixed PHC facilities with 90% of tracer medicines available',83.8,'Northern Cape'),
('level2','ZA_2_00215',2009,'level1','ZA_1_002','Percentage of fixed PHC facilities with 90% of tracer medicines available',63.1,'O.R.Tambo'),
('level2','ZA_2_00103',2009,'level1','ZA_1_001','Percentage of fixed PHC facilities with 90% of tracer medicines available',100,'Overberg'),
('level2','ZA_2_00307',2009,'level1','ZA_1_003','Percentage of fixed PHC facilities with 90% of tracer medicines available',97.2,'Pixley ka Seme'),
('level2','ZA_2_00742',2009,'level1','ZA_1_007','Percentage of fixed PHC facilities with 90% of tracer medicines available',100,'Sedibeng'),
('level2','ZA_2_00947',2009,'level1','ZA_1_009','Percentage of fixed PHC facilities with 90% of tracer medicines available',77.5,'Sekhukhune'),
('country','ZA',2009,'continent','AFR','Percentage of fixed PHC facilities with 90% of tracer medicines available',84.7,'South Africa'),
('level2','ZA_2_00419',2009,'level1','ZA_1_004','Percentage of fixed PHC facilities with 90% of tracer medicines available',98.6,'Thabo Mofutsanyane'),
('level2','ZA_2_00521',2009,'level1','ZA_1_005','Percentage of fixed PHC facilities with 90% of tracer medicines available',98.1,'Ugu'),
('level2','ZA_2_00522',2009,'level1','ZA_1_005','Percentage of fixed PHC facilities with 90% of tracer medicines available',100,'Umgungundlovu'),
('level2','ZA_2_00527',2009,'level1','ZA_1_005','Percentage of fixed PHC facilities with 90% of tracer medicines available',94.9,'Umkhanyakude'),
('level2','ZA_2_00524',2009,'level1','ZA_1_005','Percentage of fixed PHC facilities with 90% of tracer medicines available',100,'Umzinyathi'),
('level2','ZA_2_00523',2009,'level1','ZA_1_005','Percentage of fixed PHC facilities with 90% of tracer medicines available',100,'Uthukela'),
('level2','ZA_2_00934',2009,'level1','ZA_1_009','Percentage of fixed PHC facilities with 90% of tracer medicines available',58.5,'Vhembe'),
('level2','ZA_2_00936',2009,'level1','ZA_1_009','Percentage of fixed PHC facilities with 90% of tracer medicines available',56.2,'Waterberg'),
('level2','ZA_2_00101',2009,'level1','ZA_1_001','Percentage of fixed PHC facilities with 90% of tracer medicines available',88.9,'West Coast'),
('level2','ZA_2_00748',2009,'level1','ZA_1_007','Percentage of fixed PHC facilities with 90% of tracer medicines available',100,'West Rand'),
('level1','ZA_1_001',2009,'country','ZA','Percentage of fixed PHC facilities with 90% of tracer medicines available',92.1,'Western Cape'),
('level2','ZA_2_00416',2009,'level1','ZA_1_004','Percentage of fixed PHC facilities with 90% of tracer medicines available',100,'Xhariep'),
('level2','ZA_2_00308',2009,'level1','ZA_1_003','Percentage of fixed PHC facilities with 90% of tracer medicines available',95.2,'Z F Mgcawu'),
('level2','ZA_2_00526',2009,'level1','ZA_1_005','Percentage of fixed PHC facilities with 90% of tracer medicines available',95.8,'Zululand');

ALTER TABLE ONLY public.facilities_with_90_percent_of_tracer_medicines_available ADD CONSTRAINT pk_facilities_with_90_percent_of_tracer_medicines_available PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);
