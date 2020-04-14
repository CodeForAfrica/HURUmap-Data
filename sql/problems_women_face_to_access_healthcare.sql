SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.problems_women_face_to_access_healthcare DROP CONSTRAINT IF EXISTS pk_problems_women_face_to_access_healthcare;
DROP TABLE IF EXISTS public.problems_women_face_to_access_healthcare;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.problems_women_face_to_access_healthcare (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.problems_women_face_to_access_healthcare ADD CONSTRAINT pk_problems_women_face_to_access_healthcare PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.problems_women_face_to_access_healthcare VALUES
('level1','NG_1_001',2009,'country','NG','Any of the specified problems',68.1,'Abia'),
('level1','NG_1_001',2009,'country','NG','Getting money for treatment',65.4,'Abia'),
('level1','NG_1_001',2009,'country','NG','Getting permission to go for treatment',11.1,'Abia'),
('level1','NG_1_001',2009,'country','NG','Not wanting to go alone',31.6,'Abia'),
('level1','NG_1_001',2009,'country','NG','Distance to health facility',34.4,'Abia'),
('level1','NG_1_002',2009,'country','NG','Getting money for treatment',90,'Adamawa'),
('level1','NG_1_002',2009,'country','NG','Not wanting to go alone',30.7,'Adamawa'),
('level1','NG_1_002',2009,'country','NG','Getting permission to go for treatment',16.9,'Adamawa'),
('level1','NG_1_002',2009,'country','NG','Any of the specified problems',90.8,'Adamawa'),
('level1','NG_1_002',2009,'country','NG','Distance to health facility',40.2,'Adamawa'),
('level1','NG_1_003',2009,'country','NG','Getting permission to go for treatment',8.9,'Akwa Ibom'),
('level1','NG_1_003',2009,'country','NG','Getting money for treatment',47.1,'Akwa Ibom'),
('level1','NG_1_003',2009,'country','NG','Not wanting to go alone',12.1,'Akwa Ibom'),
('level1','NG_1_003',2009,'country','NG','Distance to health facility',19,'Akwa Ibom'),
('level1','NG_1_003',2009,'country','NG','Any of the specified problems',54.8,'Akwa Ibom'),
('level1','NG_1_004',2009,'country','NG','Getting permission to go for treatment',2.6,'Anambra'),
('level1','NG_1_004',2009,'country','NG','Any of the specified problems',41.6,'Anambra'),
('level1','NG_1_004',2009,'country','NG','Not wanting to go alone',5.8,'Anambra'),
('level1','NG_1_004',2009,'country','NG','Distance to health facility',11.9,'Anambra'),
('level1','NG_1_004',2009,'country','NG','Getting money for treatment',37.6,'Anambra'),
('level1','NG_1_005',2009,'country','NG','Getting permission to go for treatment',17.4,'Bauchi'),
('level1','NG_1_005',2009,'country','NG','Distance to health facility',40,'Bauchi'),
('level1','NG_1_005',2009,'country','NG','Getting money for treatment',52,'Bauchi'),
('level1','NG_1_005',2009,'country','NG','Any of the specified problems',65.3,'Bauchi'),
('level1','NG_1_005',2009,'country','NG','Not wanting to go alone',35.7,'Bauchi'),
('level1','NG_1_006',2009,'country','NG','Distance to health facility',35.8,'Bayelsa'),
('level1','NG_1_006',2009,'country','NG','Getting permission to go for treatment',35.5,'Bayelsa'),
('level1','NG_1_006',2009,'country','NG','Any of the specified problems',46.2,'Bayelsa'),
('level1','NG_1_006',2009,'country','NG','Getting money for treatment',44.5,'Bayelsa'),
('level1','NG_1_006',2009,'country','NG','Not wanting to go alone',30,'Bayelsa'),
('level1','NG_1_007',2009,'country','NG','Getting permission to go for treatment',9,'Benue'),
('level1','NG_1_007',2009,'country','NG','Any of the specified problems',80.2,'Benue'),
('level1','NG_1_007',2009,'country','NG','Distance to health facility',49.4,'Benue'),
('level1','NG_1_007',2009,'country','NG','Not wanting to go alone',17.8,'Benue'),
('level1','NG_1_007',2009,'country','NG','Getting money for treatment',77.5,'Benue'),
('level1','NG_1_008',2009,'country','NG','Distance to health facility',24.9,'Borno'),
('level1','NG_1_008',2009,'country','NG','Getting money for treatment',58.9,'Borno'),
('level1','NG_1_008',2009,'country','NG','Any of the specified problems',68.1,'Borno'),
('level1','NG_1_008',2009,'country','NG','Not wanting to go alone',23,'Borno'),
('level1','NG_1_008',2009,'country','NG','Getting permission to go for treatment',7,'Borno'),
('level1','NG_1_009',2009,'country','NG','Getting permission to go for treatment',17.9,'Cross River'),
('level1','NG_1_009',2009,'country','NG','Any of the specified problems',42.3,'Cross River'),
('level1','NG_1_009',2009,'country','NG','Not wanting to go alone',8.3,'Cross River'),
('level1','NG_1_009',2009,'country','NG','Getting money for treatment',36.1,'Cross River'),
('level1','NG_1_009',2009,'country','NG','Distance to health facility',13.5,'Cross River'),
('level1','NG_1_010',2009,'country','NG','Any of the specified problems',77.3,'Delta'),
('level1','NG_1_010',2009,'country','NG','Getting permission to go for treatment',29.4,'Delta'),
('level1','NG_1_010',2009,'country','NG','Not wanting to go alone',39.2,'Delta'),
('level1','NG_1_010',2009,'country','NG','Distance to health facility',53.3,'Delta'),
('level1','NG_1_010',2009,'country','NG','Getting money for treatment',73,'Delta'),
('level1','NG_1_011',2009,'country','NG','Getting permission to go for treatment',2.8,'Ebonyi'),
('level1','NG_1_011',2009,'country','NG','Not wanting to go alone',7.2,'Ebonyi'),
('level1','NG_1_011',2009,'country','NG','Getting money for treatment',65,'Ebonyi'),
('level1','NG_1_011',2009,'country','NG','Any of the specified problems',70.5,'Ebonyi'),
('level1','NG_1_011',2009,'country','NG','Distance to health facility',35.5,'Ebonyi'),
('level1','NG_1_012',2009,'country','NG','Getting money for treatment',39.8,'Edo'),
('level1','NG_1_012',2009,'country','NG','Any of the specified problems',49.6,'Edo'),
('level1','NG_1_012',2009,'country','NG','Not wanting to go alone',11.1,'Edo'),
('level1','NG_1_012',2009,'country','NG','Distance to health facility',22.2,'Edo'),
('level1','NG_1_012',2009,'country','NG','Getting permission to go for treatment',10.9,'Edo'),
('level1','NG_1_013',2009,'country','NG','Getting money for treatment',22.9,'Ekiti'),
('level1','NG_1_013',2009,'country','NG','Not wanting to go alone',13.2,'Ekiti'),
('level1','NG_1_013',2009,'country','NG','Any of the specified problems',30.4,'Ekiti'),
('level1','NG_1_013',2009,'country','NG','Distance to health facility',20,'Ekiti'),
('level1','NG_1_013',2009,'country','NG','Getting permission to go for treatment',8.6,'Ekiti'),
('level1','NG_1_014',2009,'country','NG','Getting money for treatment',51.6,'Enugu'),
('level1','NG_1_014',2009,'country','NG','Not wanting to go alone',21.5,'Enugu'),
('level1','NG_1_014',2009,'country','NG','Any of the specified problems',52.3,'Enugu'),
('level1','NG_1_014',2009,'country','NG','Getting permission to go for treatment',5.6,'Enugu'),
('level1','NG_1_014',2009,'country','NG','Distance to health facility',25.7,'Enugu'),
('level1','NG_1_015',2009,'country','NG','Any of the specified problems',52.6,'Federal Capital Territory'),
('level1','NG_1_015',2009,'country','NG','Getting permission to go for treatment',7.7,'Federal Capital Territory'),
('level1','NG_1_015',2009,'country','NG','Getting money for treatment',47.6,'Federal Capital Territory'),
('level1','NG_1_015',2009,'country','NG','Not wanting to go alone',9.4,'Federal Capital Territory'),
('level1','NG_1_015',2009,'country','NG','Distance to health facility',20.2,'Federal Capital Territory'),
('level1','NG_1_016',2009,'country','NG','Any of the specified problems',69,'Gombe'),
('level1','NG_1_016',2009,'country','NG','Not wanting to go alone',12.7,'Gombe'),
('level1','NG_1_016',2009,'country','NG','Getting permission to go for treatment',9.6,'Gombe'),
('level1','NG_1_016',2009,'country','NG','Getting money for treatment',61.8,'Gombe'),
('level1','NG_1_016',2009,'country','NG','Distance to health facility',41.2,'Gombe'),
('level1','NG_1_017',2009,'country','NG','Any of the specified problems',57.6,'Imo'),
('level1','NG_1_017',2009,'country','NG','Getting permission to go for treatment',12.2,'Imo'),
('level1','NG_1_017',2009,'country','NG','Not wanting to go alone',15.8,'Imo'),
('level1','NG_1_017',2009,'country','NG','Getting money for treatment',48.2,'Imo'),
('level1','NG_1_017',2009,'country','NG','Distance to health facility',30.6,'Imo'),
('level1','NG_1_018',2009,'country','NG','Distance to health facility',25.4,'Jigawa'),
('level1','NG_1_018',2009,'country','NG','Getting permission to go for treatment',3,'Jigawa'),
('level1','NG_1_018',2009,'country','NG','Any of the specified problems',74.4,'Jigawa'),
('level1','NG_1_018',2009,'country','NG','Getting money for treatment',67.6,'Jigawa'),
('level1','NG_1_018',2009,'country','NG','Not wanting to go alone',14.8,'Jigawa'),
('level1','NG_1_019',2009,'country','NG','Not wanting to go alone',4.3,'Kaduna'),
('level1','NG_1_019',2009,'country','NG','Distance to health facility',13,'Kaduna'),
('level1','NG_1_019',2009,'country','NG','Any of the specified problems',54.7,'Kaduna'),
('level1','NG_1_019',2009,'country','NG','Getting permission to go for treatment',7.1,'Kaduna'),
('level1','NG_1_019',2009,'country','NG','Getting money for treatment',52.3,'Kaduna'),
('level1','NG_1_020',2009,'country','NG','Not wanting to go alone',10.5,'Kano'),
('level1','NG_1_020',2009,'country','NG','Any of the specified problems',37.1,'Kano'),
('level1','NG_1_020',2009,'country','NG','Getting money for treatment',34.2,'Kano'),
('level1','NG_1_020',2009,'country','NG','Getting permission to go for treatment',4.8,'Kano'),
('level1','NG_1_020',2009,'country','NG','Distance to health facility',17.7,'Kano'),
('level1','NG_1_021',2009,'country','NG','Any of the specified problems',18.6,'Katsina'),
('level1','NG_1_021',2009,'country','NG','Distance to health facility',13.5,'Katsina'),
('level1','NG_1_021',2009,'country','NG','Getting permission to go for treatment',5.1,'Katsina'),
('level1','NG_1_021',2009,'country','NG','Getting money for treatment',15.3,'Katsina'),
('level1','NG_1_021',2009,'country','NG','Not wanting to go alone',12.1,'Katsina'),
('level1','NG_1_022',2009,'country','NG','Distance to health facility',30.3,'Kebbi'),
('level1','NG_1_022',2009,'country','NG','Any of the specified problems',52.5,'Kebbi'),
('level1','NG_1_022',2009,'country','NG','Not wanting to go alone',13.3,'Kebbi'),
('level1','NG_1_022',2009,'country','NG','Getting money for treatment',35.9,'Kebbi'),
('level1','NG_1_022',2009,'country','NG','Getting permission to go for treatment',17.6,'Kebbi'),
('level1','NG_1_023',2009,'country','NG','Any of the specified problems',72.6,'Kogi'),
('level1','NG_1_023',2009,'country','NG','Distance to health facility',40.4,'Kogi'),
('level1','NG_1_023',2009,'country','NG','Getting money for treatment',64.7,'Kogi'),
('level1','NG_1_023',2009,'country','NG','Not wanting to go alone',14,'Kogi'),
('level1','NG_1_023',2009,'country','NG','Getting permission to go for treatment',9.8,'Kogi'),
('level1','NG_1_024',2009,'country','NG','Not wanting to go alone',9.2,'Kwara'),
('level1','NG_1_024',2009,'country','NG','Distance to health facility',21.3,'Kwara'),
('level1','NG_1_024',2009,'country','NG','Getting money for treatment',32.1,'Kwara'),
('level1','NG_1_024',2009,'country','NG','Getting permission to go for treatment',6.1,'Kwara'),
('level1','NG_1_024',2009,'country','NG','Any of the specified problems',38.1,'Kwara'),
('level1','NG_1_025',2009,'country','NG','Any of the specified problems',33.6,'Lagos'),
('level1','NG_1_025',2009,'country','NG','Getting money for treatment',25,'Lagos'),
('level1','NG_1_025',2009,'country','NG','Getting permission to go for treatment',6.2,'Lagos'),
('level1','NG_1_025',2009,'country','NG','Not wanting to go alone',6.9,'Lagos'),
('level1','NG_1_025',2009,'country','NG','Distance to health facility',12.7,'Lagos'),
('level1','NG_1_026',2009,'country','NG','Getting permission to go for treatment',4.9,'Nasarawa'),
('level1','NG_1_026',2009,'country','NG','Getting money for treatment',10.3,'Nasarawa'),
('level1','NG_1_026',2009,'country','NG','Not wanting to go alone',7.3,'Nasarawa'),
('level1','NG_1_026',2009,'country','NG','Distance to health facility',6.5,'Nasarawa'),
('level1','NG_1_026',2009,'country','NG','Any of the specified problems',13.8,'Nasarawa'),
('level1','NG_1_027',2009,'country','NG','Any of the specified problems',69.2,'Niger'),
('level1','NG_1_027',2009,'country','NG','Not wanting to go alone',34.9,'Niger'),
('level1','NG_1_027',2009,'country','NG','Getting permission to go for treatment',32.3,'Niger'),
('level1','NG_1_027',2009,'country','NG','Getting money for treatment',62.5,'Niger'),
('level1','NG_1_027',2009,'country','NG','Distance to health facility',48.3,'Niger'),
('country','NG',2009,'continent','AFR','Any of the specified problems',51.5,'Nigeria'),
('country','NG',2009,'continent','AFR','Getting permission to go for treatment',11.4,'Nigeria'),
('country','NG',2009,'continent','AFR','Getting money for treatment',45.8,'Nigeria'),
('country','NG',2009,'continent','AFR','Not wanting to go alone',16.1,'Nigeria'),
('country','NG',2009,'continent','AFR','Distance to health facility',25.7,'Nigeria'),
('level1','ZA_1_006',2009,'country','ZA','Getting money for treatment',39.9,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Getting permission to go for treatment',9.2,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Not wanting to go alone',11.6,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Distance to health facility',19.6,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Any of the specified problems',44.6,'North West'),
('level1','NG_1_028',2009,'country','NG','Getting permission to go for treatment',13.7,'Ogun'),
('level1','NG_1_028',2009,'country','NG','Getting money for treatment',33,'Ogun'),
('level1','NG_1_028',2009,'country','NG','Any of the specified problems',36.5,'Ogun'),
('level1','NG_1_028',2009,'country','NG','Distance to health facility',10.2,'Ogun'),
('level1','NG_1_028',2009,'country','NG','Not wanting to go alone',6.7,'Ogun'),
('level1','NG_1_029',2009,'country','NG','Getting permission to go for treatment',1.1,'Ondo'),
('level1','NG_1_029',2009,'country','NG','Getting money for treatment',14.5,'Ondo'),
('level1','NG_1_029',2009,'country','NG','Not wanting to go alone',1.5,'Ondo'),
('level1','NG_1_029',2009,'country','NG','Any of the specified problems',15.3,'Ondo'),
('level1','NG_1_029',2009,'country','NG','Distance to health facility',2,'Ondo'),
('level1','NG_1_030',2009,'country','NG','Not wanting to go alone',2.5,'Osun'),
('level1','NG_1_030',2009,'country','NG','Getting money for treatment',8.6,'Osun'),
('level1','NG_1_030',2009,'country','NG','Getting permission to go for treatment',1.7,'Osun'),
('level1','NG_1_030',2009,'country','NG','Any of the specified problems',12.8,'Osun'),
('level1','NG_1_030',2009,'country','NG','Distance to health facility',6.8,'Osun'),
('level1','NG_1_031',2009,'country','NG','Getting permission to go for treatment',51.7,'Oyo'),
('level1','NG_1_031',2009,'country','NG','Not wanting to go alone',52.1,'Oyo'),
('level1','NG_1_031',2009,'country','NG','Getting money for treatment',71.9,'Oyo'),
('level1','NG_1_031',2009,'country','NG','Any of the specified problems',74.8,'Oyo'),
('level1','NG_1_031',2009,'country','NG','Distance to health facility',64.6,'Oyo'),
('level1','NG_1_032',2009,'country','NG','Distance to health facility',34,'Plateau'),
('level1','NG_1_032',2009,'country','NG','Getting permission to go for treatment',5.2,'Plateau'),
('level1','NG_1_032',2009,'country','NG','Not wanting to go alone',18,'Plateau'),
('level1','NG_1_032',2009,'country','NG','Any of the specified problems',50.1,'Plateau'),
('level1','NG_1_032',2009,'country','NG','Getting money for treatment',39.2,'Plateau'),
('level1','NG_1_033',2009,'country','NG','Getting permission to go for treatment',5.9,'Rivers'),
('level1','NG_1_033',2009,'country','NG','Any of the specified problems',47.1,'Rivers'),
('level1','NG_1_033',2009,'country','NG','Distance to health facility',13.3,'Rivers'),
('level1','NG_1_033',2009,'country','NG','Not wanting to go alone',8.1,'Rivers'),
('level1','NG_1_033',2009,'country','NG','Getting money for treatment',43.6,'Rivers'),
('level1','NG_1_034',2009,'country','NG','Distance to health facility',35.8,'Sokoto'),
('level1','NG_1_034',2009,'country','NG','Getting money for treatment',43.6,'Sokoto'),
('level1','NG_1_034',2009,'country','NG','Getting permission to go for treatment',41.8,'Sokoto'),
('level1','NG_1_034',2009,'country','NG','Any of the specified problems',51.2,'Sokoto'),
('level1','NG_1_034',2009,'country','NG','Not wanting to go alone',33.8,'Sokoto'),
('level1','NG_1_035',2009,'country','NG','Any of the specified problems',65.4,'Taraba'),
('level1','NG_1_035',2009,'country','NG','Getting permission to go for treatment',7.5,'Taraba'),
('level1','NG_1_035',2009,'country','NG','Distance to health facility',30.6,'Taraba'),
('level1','NG_1_035',2009,'country','NG','Getting money for treatment',51.2,'Taraba'),
('level1','NG_1_035',2009,'country','NG','Not wanting to go alone',15.4,'Taraba'),
('level1','NG_1_036',2009,'country','NG','Getting money for treatment',54.2,'Yobe'),
('level1','NG_1_036',2009,'country','NG','Not wanting to go alone',23.9,'Yobe'),
('level1','NG_1_036',2009,'country','NG','Any of the specified problems',59.4,'Yobe'),
('level1','NG_1_036',2009,'country','NG','Distance to health facility',32,'Yobe'),
('level1','NG_1_036',2009,'country','NG','Getting permission to go for treatment',12.1,'Yobe'),
('level1','NG_1_037',2009,'country','NG','Not wanting to go alone',6.8,'Zamfara'),
('level1','NG_1_037',2009,'country','NG','Distance to health facility',19.9,'Zamfara'),
('level1','NG_1_037',2009,'country','NG','Getting money for treatment',42.8,'Zamfara'),
('level1','NG_1_037',2009,'country','NG','Any of the specified problems',43.5,'Zamfara'),
('level1','NG_1_037',2009,'country','NG','Getting permission to go for treatment',6,'Zamfara'),
('level1','ZA_1_002',2009,'country','ZA','At least one problem accessing health care',49.4,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Getting permission to go for treatment',14.2,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Distance to health facility',34.2,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Getting money for treatment',37,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Not wanting to go alone',19.7,'Eastern Cape'),
('level1','ZA_1_004',2009,'country','ZA','Getting money for treatment',25.5,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Distance to health facility',16.8,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','At least one problem accessing health care',31.4,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Not wanting to go alone',9.8,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Getting permission to go for treatment',10.9,'Free State'),
('level1','ZA_1_007',2009,'country','ZA','Distance to health facility',16.2,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','At least one problem accessing health care',34.4,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Not wanting to go alone',6.6,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Getting permission to go for treatment',10.1,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Getting money for treatment',26.1,'Gauteng'),
('level1','ZA_1_005',2009,'country','ZA','At least one problem accessing health care',39.6,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Not wanting to go alone',24.6,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Distance to health facility',29.7,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Getting permission to go for treatment',23.9,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Getting money for treatment',27.8,'KwaZulu-Natal'),
('level1','ZA_1_009',2009,'country','ZA','Getting money for treatment',37.5,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Getting permission to go for treatment',22.8,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','At least one problem accessing health care',48.1,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Distance to health facility',33.1,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Not wanting to go alone',18.8,'Limpopo'),
('level1','ZA_1_008',2009,'country','ZA','At least one problem accessing health care',38.9,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Distance to health facility',30.1,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Getting money for treatment',25.7,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Getting permission to go for treatment',14.6,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Not wanting to go alone',11.6,'Mpumalanga'),
('level1','ZA_1_006',2009,'country','ZA','Distance to health facility',31.8,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Getting money for treatment',32.9,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Getting permission to go for treatment',10.6,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Not wanting to go alone',17.4,'North West'),
('level1','ZA_1_006',2009,'country','ZA','At least one problem accessing health care',46.3,'North West'),
('level1','ZA_1_003',2009,'country','ZA','Distance to health facility',23.7,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','At least one problem accessing health care',38,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Not wanting to go alone',10,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Getting permission to go for treatment',15.8,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Getting money for treatment',28,'Northern Cape'),
('country','ZA',2009,'continent','AFR','At least one problem accessing health care',38.8,'South Africa'),
('country','ZA',2009,'continent','AFR','Not wanting to go alone',14.1,'South Africa'),
('country','ZA',2009,'continent','AFR','Distance to health facility',25.2,'South Africa'),
('country','ZA',2009,'continent','AFR','Getting money for treatment',28.5,'South Africa'),
('country','ZA',2009,'continent','AFR','Getting permission to go for treatment',14.5,'South Africa'),
('level1','ZA_1_001',2009,'country','ZA','Not wanting to go alone',8.6,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Distance to health facility',11.3,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Getting money for treatment',16,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','At least one problem accessing health care',23.3,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Getting permission to go for treatment',7.2,'Western Cape') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','NG','allProblemsWomenFaceToAccessHealthcares','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/bc821451-4325-4145-bb42-87a45359d03c') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','NG','allProblemsWomenFaceToAccessHealthcares','"Nigeria Demographic and Health Survey, 2018"','https://open.africa/dataset/nigeria-demographic-and-health-survey-2018/resource/bc821451-4325-4145-bb42-87a45359d03c') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allProblemsWomenFaceToAccessHealthcares','"Demographic and Health Survey, 2016"','https://open.africa/dataset/demographic-and-health-survey-2016-south-africa/resource/9077443b-c590-49f9-9483-0a0b18d9a27b') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allProblemsWomenFaceToAccessHealthcares','"Demographic and Health Survey, 2016"','https://open.africa/dataset/demographic-and-health-survey-2016-south-africa/resource/9077443b-c590-49f9-9483-0a0b18d9a27b') ON CONFLICT DO NOTHING;
