SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.level_of_formality_by_gender DROP CONSTRAINT IF EXISTS pk_level_of_formality_by_gender;
DROP TABLE IF EXISTS public.level_of_formality_by_gender;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.level_of_formality_by_gender (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable_2 TEXT,
	variable_1 TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.level_of_formality_by_gender ADD CONSTRAINT pk_level_of_formality_by_gender PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.level_of_formality_by_gender VALUES
('level1','KE_1_030',2009,'country','KE','Intersex','Rural',12,'Baringo'),
('level1','KE_1_030',2009,'country','KE','Female','Rural',292006,'Baringo'),
('level1','KE_1_030',2009,'country','KE','Male','Rural',299456,'Baringo'),
('level1','KE_1_030',2009,'country','KE','Intersex','Urban',1,'Baringo'),
('level1','KE_1_030',2009,'country','KE','Female','Urban',38422,'Baringo'),
('level1','KE_1_030',2009,'country','KE','Male','Urban',36866,'Baringo'),
('level1','KE_1_036',2009,'country','KE','Female','Rural',427577,'Bomet'),
('level1','KE_1_036',2009,'country','KE','Intersex','Rural',22,'Bomet'),
('level1','KE_1_036',2009,'country','KE','Male','Rural',420119,'Bomet'),
('level1','KE_1_036',2009,'country','KE','Female','Urban',13802,'Bomet'),
('level1','KE_1_036',2009,'country','KE','Intersex','Urban',1,'Bomet'),
('level1','KE_1_036',2009,'country','KE','Male','Urban',14168,'Bomet'),
('level1','KE_1_039',2009,'country','KE','Intersex','Rural',29,'Bungoma'),
('level1','KE_1_039',2009,'country','KE','Male','Rural',720235,'Bungoma'),
('level1','KE_1_039',2009,'country','KE','Female','Rural',760194,'Bungoma'),
('level1','KE_1_039',2009,'country','KE','Intersex','Urban',6,'Bungoma'),
('level1','KE_1_039',2009,'country','KE','Male','Urban',91911,'Bungoma'),
('level1','KE_1_039',2009,'country','KE','Female','Urban',98195,'Bungoma'),
('level1','KE_1_040',2009,'country','KE','Female','Rural',408611,'Busia'),
('level1','KE_1_040',2009,'country','KE','Male','Rural',371289,'Busia'),
('level1','KE_1_040',2009,'country','KE','Intersex','Rural',28,'Busia'),
('level1','KE_1_040',2009,'country','KE','Female','Urban',58790,'Busia'),
('level1','KE_1_040',2009,'country','KE','Male','Urban',54963,'Busia'),
('level1','KE_1_040',2009,'country','KE','Intersex','Urban',0,'Busia'),
('level1','KE_1_014',2009,'country','KE','Male','Rural',267126,'Embu'),
('level1','KE_1_014',2009,'country','KE','Female','Rural',265534,'Embu'),
('level1','KE_1_014',2009,'country','KE','Intersex','Rural',15,'Embu'),
('level1','KE_1_014',2009,'country','KE','Male','Urban',37082,'Embu'),
('level1','KE_1_014',2009,'country','KE','Female','Urban',38833,'Embu'),
('level1','KE_1_014',2009,'country','KE','Intersex','Urban',9,'Embu'),
('level1','KE_1_007',2009,'country','KE','Intersex','Rural',27,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Female','Rural',281013,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Male','Rural',349423,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Intersex','Urban',7,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Female','Urban',101331,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Male','Urban',109552,'Garissa'),
('level1','KE_1_043',2009,'country','KE','Intersex','Rural',19,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Female','Rural',532861,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Male','Rural',485991,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Intersex','Urban',4,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Female','Urban',59506,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Male','Urban',53569,'Homa Bay'),
('level1','KE_1_011',2009,'country','KE','Female','Rural',65894,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Male','Rural',76435,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Intersex','Rural',4,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Female','Urban',62589,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Male','Urban',63075,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Intersex','Urban',5,'Isiolo'),
('level1','KE_1_034',2009,'country','KE','Male','Rural',250233,'Kajiado'),
('level1','KE_1_034',2009,'country','KE','Female','Rural',244970,'Kajiado'),
('level1','KE_1_034',2009,'country','KE','Intersex','Rural',15,'Kajiado'),
('level1','KE_1_034',2009,'country','KE','Male','Urban',306865,'Kajiado'),
('level1','KE_1_034',2009,'country','KE','Female','Urban',315734,'Kajiado'),
('level1','KE_1_034',2009,'country','KE','Intersex','Urban',23,'Kajiado'),
('level1','KE_1_037',2009,'country','KE','Intersex','Rural',31,'Kakamega'),
('level1','KE_1_037',2009,'country','KE','Male','Rural',806682,'Kakamega'),
('level1','KE_1_037',2009,'country','KE','Female','Rural',875526,'Kakamega'),
('level1','KE_1_037',2009,'country','KE','Intersex','Urban',9,'Kakamega'),
('level1','KE_1_037',2009,'country','KE','Male','Urban',90451,'Kakamega'),
('level1','KE_1_037',2009,'country','KE','Female','Urban',94880,'Kakamega'),
('country','KE',2009,'continent','AFR','Intersex','Rural',841,'Kenya'),
('country','KE',2009,'continent','AFR','Female','Rural',16535833,'Kenya'),
('country','KE',2009,'continent','AFR','Male','Rural',16195922,'Kenya'),
('country','KE',2009,'continent','AFR','Intersex','Urban',683,'Kenya'),
('country','KE',2009,'continent','AFR','Female','Urban',7478883,'Kenya'),
('country','KE',2009,'continent','AFR','Male','Urban',7352134,'Kenya'),
('level1','KE_1_035',2009,'country','KE','Male','Rural',402717,'Kericho'),
('level1','KE_1_035',2009,'country','KE','Female','Rural',405500,'Kericho'),
('level1','KE_1_035',2009,'country','KE','Intersex','Rural',22,'Kericho'),
('level1','KE_1_035',2009,'country','KE','Male','Urban',48024,'Kericho'),
('level1','KE_1_035',2009,'country','KE','Female','Urban',45508,'Kericho'),
('level1','KE_1_035',2009,'country','KE','Intersex','Urban',6,'Kericho'),
('level1','KE_1_022',2009,'country','KE','Female','Rural',355866,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Male','Rural',355557,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Intersex','Rural',27,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Female','Urban',874588,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Male','Urban',831589,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Intersex','Urban',108,'Kiambu'),
('level1','KE_1_003',2009,'country','KE','Male','Rural',512765,'Kilifi'),
('level1','KE_1_003',2009,'country','KE','Female','Rural',547115,'Kilifi'),
('level1','KE_1_003',2009,'country','KE','Intersex','Rural',19,'Kilifi'),
('level1','KE_1_003',2009,'country','KE','Male','Urban',191324,'Kilifi'),
('level1','KE_1_003',2009,'country','KE','Female','Urban',202558,'Kilifi'),
('level1','KE_1_003',2009,'country','KE','Intersex','Urban',6,'Kilifi'),
('level1','KE_1_020',2009,'country','KE','Male','Rural',237086,'Kirinyaga'),
('level1','KE_1_020',2009,'country','KE','Intersex','Rural',18,'Kirinyaga'),
('level1','KE_1_020',2009,'country','KE','Female','Rural',237083,'Kirinyaga'),
('level1','KE_1_020',2009,'country','KE','Male','Urban',64925,'Kirinyaga'),
('level1','KE_1_020',2009,'country','KE','Intersex','Urban',13,'Kirinyaga'),
('level1','KE_1_020',2009,'country','KE','Female','Urban',71286,'Kirinyaga'),
('level1','KE_1_045',2009,'country','KE','Female','Rural',583560,'Kisii'),
('level1','KE_1_045',2009,'country','KE','Male','Rural',531860,'Kisii'),
('level1','KE_1_045',2009,'country','KE','Intersex','Rural',30,'Kisii'),
('level1','KE_1_045',2009,'country','KE','Female','Urban',77478,'Kisii'),
('level1','KE_1_045',2009,'country','KE','Male','Urban',73924,'Kisii'),
('level1','KE_1_045',2009,'country','KE','Intersex','Urban',8,'Kisii'),
('level1','KE_1_042',2009,'country','KE','Intersex','Rural',8,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Male','Rural',344721,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Female','Rural',369939,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Intersex','Urban',15,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Male','Urban',216221,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Female','Urban',224670,'Kisumu'),
('level1','KE_1_015',2009,'country','KE','Female','Rural',559193,'Kitui'),
('level1','KE_1_015',2009,'country','KE','Male','Rural',522943,'Kitui'),
('level1','KE_1_015',2009,'country','KE','Intersex','Rural',32,'Kitui'),
('level1','KE_1_015',2009,'country','KE','Female','Urban',27958,'Kitui'),
('level1','KE_1_015',2009,'country','KE','Male','Urban',26060,'Kitui'),
('level1','KE_1_015',2009,'country','KE','Intersex','Urban',1,'Kitui'),
('level1','KE_1_002',2009,'country','KE','Intersex','Rural',13,'Kwale'),
('level1','KE_1_002',2009,'country','KE','Female','Rural',377650,'Kwale'),
('level1','KE_1_002',2009,'country','KE','Male','Rural',362726,'Kwale'),
('level1','KE_1_002',2009,'country','KE','Intersex','Urban',5,'Kwale'),
('level1','KE_1_002',2009,'country','KE','Female','Urban',64031,'Kwale'),
('level1','KE_1_002',2009,'country','KE','Male','Urban',62395,'Kwale'),
('level1','KE_1_031',2009,'country','KE','Intersex','Rural',14,'Laikipia'),
('level1','KE_1_031',2009,'country','KE','Female','Rural',194909,'Laikipia'),
('level1','KE_1_031',2009,'country','KE','Male','Rural',196277,'Laikipia'),
('level1','KE_1_031',2009,'country','KE','Intersex','Urban',4,'Laikipia'),
('level1','KE_1_031',2009,'country','KE','Female','Urban',64193,'Laikipia'),
('level1','KE_1_031',2009,'country','KE','Male','Urban',63163,'Laikipia'),
('level1','KE_1_005',2009,'country','KE','Intersex','Rural',2,'Lamu'),
('level1','KE_1_005',2009,'country','KE','Female','Rural',48902,'Lamu'),
('level1','KE_1_005',2009,'country','KE','Male','Rural',56570,'Lamu'),
('level1','KE_1_005',2009,'country','KE','Intersex','Urban',2,'Lamu'),
('level1','KE_1_005',2009,'country','KE','Female','Urban',18911,'Lamu'),
('level1','KE_1_005',2009,'country','KE','Male','Urban',19533,'Lamu'),
('level1','KE_1_016',2009,'country','KE','Intersex','Rural',25,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Female','Rural',503582,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Male','Rural',504247,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Intersex','Urban',9,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Female','Urban',207609,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Male','Urban',206460,'Machakos'),
('level1','KE_1_017',2009,'country','KE','Female','Rural',460075,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Intersex','Rural',20,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Male','Rural',450482,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Female','Urban',37867,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Intersex','Urban',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Male','Urban',39209,'Makueni'),
('level1','KE_1_009',2009,'country','KE','Male','Rural',299428,'Mandera'),
('level1','KE_1_009',2009,'country','KE','Intersex','Rural',27,'Mandera'),
('level1','KE_1_009',2009,'country','KE','Female','Rural',297535,'Mandera'),
('level1','KE_1_009',2009,'country','KE','Male','Urban',135548,'Mandera'),
('level1','KE_1_009',2009,'country','KE','Intersex','Urban',10,'Mandera'),
('level1','KE_1_009',2009,'country','KE','Female','Urban',134909,'Mandera'),
('level1','KE_1_010',2009,'country','KE','Male','Rural',188758,'Marsabit'),
('level1','KE_1_010',2009,'country','KE','Female','Rural',163772,'Marsabit'),
('level1','KE_1_010',2009,'country','KE','Intersex','Rural',16,'Marsabit'),
('level1','KE_1_010',2009,'country','KE','Male','Urban',54790,'Marsabit'),
('level1','KE_1_010',2009,'country','KE','Female','Urban',52447,'Marsabit'),
('level1','KE_1_010',2009,'country','KE','Intersex','Urban',2,'Marsabit'),
('level1','KE_1_012',2009,'country','KE','Female','Rural',707228,'Meru'),
('level1','KE_1_012',2009,'country','KE','Male','Rural',699532,'Meru'),
('level1','KE_1_012',2009,'country','KE','Intersex','Rural',36,'Meru'),
('level1','KE_1_012',2009,'country','KE','Female','Urban',70747,'Meru'),
('level1','KE_1_012',2009,'country','KE','Male','Urban',68166,'Meru'),
('level1','KE_1_012',2009,'country','KE','Intersex','Urban',5,'Meru'),
('level1','KE_1_044',2009,'country','KE','Male','Rural',455887,'Migori'),
('level1','KE_1_044',2009,'country','KE','Female','Rural',493318,'Migori'),
('level1','KE_1_044',2009,'country','KE','Intersex','Rural',31,'Migori'),
('level1','KE_1_044',2009,'country','KE','Male','Urban',80300,'Migori'),
('level1','KE_1_044',2009,'country','KE','Female','Urban',86896,'Migori'),
('level1','KE_1_044',2009,'country','KE','Intersex','Urban',4,'Migori'),
('level1','KE_1_001',2009,'country','KE','Female','Rural',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Intersex','Rural',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Male','Rural',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Female','Urban',598046,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Intersex','Urban',30,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Male','Urban',610257,'Mombasa'),
('level1','KE_1_021',2009,'country','KE','Male','Rural',467062,'Murang''a'),
('level1','KE_1_021',2009,'country','KE','Intersex','Rural',30,'Murang''a'),
('level1','KE_1_021',2009,'country','KE','Female','Rural',471121,'Murang''a'),
('level1','KE_1_021',2009,'country','KE','Male','Urban',56878,'Murang''a'),
('level1','KE_1_021',2009,'country','KE','Intersex','Urban',1,'Murang''a'),
('level1','KE_1_021',2009,'country','KE','Female','Urban',61548,'Murang''a'),
('level1','KE_1_032',2009,'country','KE','Female','Rural',555458,'Nakuru'),
('level1','KE_1_032',2009,'country','KE','Male','Rural',559639,'Nakuru'),
('level1','KE_1_032',2009,'country','KE','Intersex','Rural',25,'Nakuru'),
('level1','KE_1_032',2009,'country','KE','Female','Urban',529377,'Nakuru'),
('level1','KE_1_032',2009,'country','KE','Male','Urban',517633,'Nakuru'),
('level1','KE_1_032',2009,'country','KE','Intersex','Urban',70,'Nakuru'),
('level1','KE_1_029',2009,'country','KE','Female','Rural',414497,'Nandi'),
('level1','KE_1_029',2009,'country','KE','Intersex','Rural',20,'Nandi'),
('level1','KE_1_029',2009,'country','KE','Male','Rural',411715,'Nandi'),
('level1','KE_1_029',2009,'country','KE','Female','Urban',29933,'Nandi'),
('level1','KE_1_029',2009,'country','KE','Intersex','Urban',2,'Nandi'),
('level1','KE_1_029',2009,'country','KE','Male','Urban',29544,'Nandi'),
('level1','KE_1_033',2009,'country','KE','Male','Rural',529224,'Narok'),
('level1','KE_1_033',2009,'country','KE','Intersex','Rural',21,'Narok'),
('level1','KE_1_033',2009,'country','KE','Female','Rural',528276,'Narok'),
('level1','KE_1_033',2009,'country','KE','Male','Urban',49818,'Narok'),
('level1','KE_1_033',2009,'country','KE','Intersex','Urban',5,'Narok'),
('level1','KE_1_033',2009,'country','KE','Female','Urban',50529,'Narok'),
('level1','KE_1_046',2009,'country','KE','Male','Rural',268241,'Nyamira'),
('level1','KE_1_046',2009,'country','KE','Female','Rural',290286,'Nyamira'),
('level1','KE_1_046',2009,'country','KE','Intersex','Rural',13,'Nyamira'),
('level1','KE_1_046',2009,'country','KE','Male','Urban',22666,'Nyamira'),
('level1','KE_1_046',2009,'country','KE','Female','Urban',24370,'Nyamira'),
('level1','KE_1_046',2009,'country','KE','Intersex','Urban',0,'Nyamira'),
('level1','KE_1_018',2009,'country','KE','Intersex','Rural',15,'Nyandarua'),
('level1','KE_1_018',2009,'country','KE','Male','Rural',282499,'Nyandarua'),
('level1','KE_1_018',2009,'country','KE','Female','Rural',289240,'Nyandarua'),
('level1','KE_1_018',2009,'country','KE','Intersex','Urban',5,'Nyandarua'),
('level1','KE_1_018',2009,'country','KE','Male','Urban',32523,'Nyandarua'),
('level1','KE_1_018',2009,'country','KE','Female','Urban',34007,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE','Intersex','Rural',28,'Nyeri'),
('level1','KE_1_019',2009,'country','KE','Male','Rural',300893,'Nyeri'),
('level1','KE_1_019',2009,'country','KE','Female','Rural',307488,'Nyeri'),
('level1','KE_1_019',2009,'country','KE','Intersex','Urban',3,'Nyeri'),
('level1','KE_1_019',2009,'country','KE','Male','Urban',73395,'Nyeri'),
('level1','KE_1_019',2009,'country','KE','Female','Urban',77357,'Nyeri'),
('level1','KE_1_025',2009,'country','KE','Female','Rural',130130,'Samburu'),
('level1','KE_1_025',2009,'country','KE','Intersex','Rural',7,'Samburu'),
('level1','KE_1_025',2009,'country','KE','Male','Rural',133058,'Samburu'),
('level1','KE_1_025',2009,'country','KE','Female','Urban',23416,'Samburu'),
('level1','KE_1_025',2009,'country','KE','Intersex','Urban',0,'Samburu'),
('level1','KE_1_025',2009,'country','KE','Male','Urban',23716,'Samburu'),
('level1','KE_1_041',2009,'country','KE','Male','Rural',431450,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Intersex','Rural',15,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Female','Rural',476301,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Male','Urban',40219,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Intersex','Urban',3,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Female','Urban',45195,'Siaya'),
('level1','KE_1_006',2009,'country','KE','Female','Rural',120178,'Taita Taveta'),
('level1','KE_1_006',2009,'country','KE','Intersex','Rural',2,'Taita Taveta'),
('level1','KE_1_006',2009,'country','KE','Male','Rural',126717,'Taita Taveta'),
('level1','KE_1_006',2009,'country','KE','Female','Urban',47149,'Taita Taveta'),
('level1','KE_1_006',2009,'country','KE','Intersex','Urban',5,'Taita Taveta'),
('level1','KE_1_006',2009,'country','KE','Male','Urban',46620,'Taita Taveta'),
('level1','KE_1_004',2009,'country','KE','Intersex','Rural',1,'Tana River'),
('level1','KE_1_004',2009,'country','KE','Female','Rural',119524,'Tana River'),
('level1','KE_1_004',2009,'country','KE','Male','Rural',120696,'Tana River'),
('level1','KE_1_004',2009,'country','KE','Intersex','Urban',1,'Tana River'),
('level1','KE_1_004',2009,'country','KE','Female','Urban',37867,'Tana River'),
('level1','KE_1_004',2009,'country','KE','Male','Urban',37854,'Tana River'),
('level1','KE_1_013',2009,'country','KE','Intersex','Rural',6,'Tharaka-Nithi'),
('level1','KE_1_013',2009,'country','KE','Male','Rural',177716,'Tharaka-Nithi'),
('level1','KE_1_013',2009,'country','KE','Female','Rural',182712,'Tharaka-Nithi'),
('level1','KE_1_013',2009,'country','KE','Intersex','Urban',1,'Tharaka-Nithi'),
('level1','KE_1_013',2009,'country','KE','Male','Urban',16048,'Tharaka-Nithi'),
('level1','KE_1_013',2009,'country','KE','Female','Urban',16694,'Tharaka-Nithi'),
('level1','KE_1_023',2009,'country','KE','Intersex','Rural',20,'Turkana'),
('level1','KE_1_023',2009,'country','KE','Female','Rural',379675,'Turkana'),
('level1','KE_1_023',2009,'country','KE','Male','Rural',406490,'Turkana'),
('level1','KE_1_023',2009,'country','KE','Intersex','Urban',1,'Turkana'),
('level1','KE_1_023',2009,'country','KE','Female','Urban',69193,'Turkana'),
('level1','KE_1_023',2009,'country','KE','Male','Urban',71597,'Turkana'),
('level1','KE_1_027',2009,'country','KE','Female','Rural',326700,'Uasin Gishu'),
('level1','KE_1_027',2009,'country','KE','Male','Rural',326269,'Uasin Gishu'),
('level1','KE_1_027',2009,'country','KE','Intersex','Rural',12,'Uasin Gishu'),
('level1','KE_1_027',2009,'country','KE','Female','Urban',256189,'Uasin Gishu'),
('level1','KE_1_027',2009,'country','KE','Male','Urban',254000,'Uasin Gishu'),
('level1','KE_1_027',2009,'country','KE','Intersex','Urban',16,'Uasin Gishu'),
('level1','KE_1_038',2009,'country','KE','Intersex','Rural',10,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Male','Rural',255727,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Female','Rural',275892,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Intersex','Urban',2,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Male','Urban',27951,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Female','Urban',30431,'Vihiga'),
('level1','KE_1_008',2009,'country','KE','Female','Rural',283500,'Wajir'),
('level1','KE_1_008',2009,'country','KE','Intersex','Rural',27,'Wajir'),
('level1','KE_1_008',2009,'country','KE','Male','Rural',320562,'Wajir'),
('level1','KE_1_008',2009,'country','KE','Female','Urban',82340,'Wajir'),
('level1','KE_1_008',2009,'country','KE','Intersex','Urban',22,'Wajir'),
('level1','KE_1_008',2009,'country','KE','Male','Urban',94812,'Wajir'),
('level1','KE_1_024',2009,'country','KE','Intersex','Rural',15,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Female','Rural',297916,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Male','Rural',291469,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Intersex','Urban',0,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Female','Urban',16297,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Male','Urban',15544,'West Pokot') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','KE','allLevelOfFormalityByGenders','"Kenya Population and Housing Census, 2019"','https://open.africa/dataset/2019-kenya-population-and-housing-census') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','KE','allLevelOfFormalityByGenders','"Kenya Population and Housing Census, 2019"','https://open.africa/dataset/2019-kenya-population-and-housing-census') ON CONFLICT DO NOTHING;
