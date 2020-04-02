SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.population_by_gender DROP CONSTRAINT IF EXISTS pk_population_by_gender;
DROP TABLE IF EXISTS public.population_by_gender;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.population_by_gender (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.population_by_gender VALUES
('level1','KE_1_030',2009,'country','KE','Male',336322,'Baringo'),
('level1','KE_1_030',2009,'country','KE','Total',666763,'Baringo'),
('level1','KE_1_030',2009,'country','KE','Intersex',13,'Baringo'),
('level1','KE_1_030',2009,'country','KE','Female',330428,'Baringo'),
('level1','KE_1_036',2009,'country','KE','Male',434287,'Bomet'),
('level1','KE_1_036',2009,'country','KE','Intersex',23,'Bomet'),
('level1','KE_1_036',2009,'country','KE','Total',875689,'Bomet'),
('level1','KE_1_036',2009,'country','KE','Female',441379,'Bomet'),
('level1','KE_1_039',2009,'country','KE','Total',1670570,'Bungoma'),
('level1','KE_1_039',2009,'country','KE','Female',858389,'Bungoma'),
('level1','KE_1_039',2009,'country','KE','Male',812146,'Bungoma'),
('level1','KE_1_039',2009,'country','KE','Intersex',35,'Bungoma'),
('level1','KE_1_040',2009,'country','KE','Intersex',28,'Busia'),
('level1','KE_1_040',2009,'country','KE','Male',426252,'Busia'),
('level1','KE_1_040',2009,'country','KE','Female',467401,'Busia'),
('level1','KE_1_040',2009,'country','KE','Total',893681,'Busia'),
('level1','KE_1_028',2009,'country','KE','Intersex',12,'Elgeyo-Marakwet'),
('level1','KE_1_028',2009,'country','KE','Total',454480,'Elgeyo-Marakwet'),
('level1','KE_1_028',2009,'country','KE','Female',227151,'Elgeyo-Marakwet'),
('level1','KE_1_028',2009,'country','KE','Male',227317,'Elgeyo-Marakwet'),
('level1','KE_1_014',2009,'country','KE','Male',304208,'Embu'),
('level1','KE_1_014',2009,'country','KE','Female',304367,'Embu'),
('level1','KE_1_014',2009,'country','KE','Intersex',24,'Embu'),
('level1','KE_1_014',2009,'country','KE','Total',608599,'Embu'),
('level1','KE_1_007',2009,'country','KE','Total',841353,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Intersex',34,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Female',382344,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Male',458975,'Garissa'),
('level1','KE_1_043',2009,'country','KE','Male',539560,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Total',1131950,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Intersex',23,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Female',592367,'Homa Bay'),
('level1','KE_1_011',2009,'country','KE','Intersex',9,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Female',128483,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Total',268002,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Male',139510,'Isiolo'),
('level1','KE_1_034',2009,'country','KE','Female',560704,'Kajiado'),
('level1','KE_1_034',2009,'country','KE','Male',557098,'Kajiado'),
('level1','KE_1_034',2009,'country','KE','Intersex',38,'Kajiado'),
('level1','KE_1_034',2009,'country','KE','Total',1117840,'Kajiado'),
('level1','KE_1_037',2009,'country','KE','Total',1867579,'Kakamega'),
('level1','KE_1_037',2009,'country','KE','Female',970406,'Kakamega'),
('level1','KE_1_037',2009,'country','KE','Intersex',40,'Kakamega'),
('level1','KE_1_037',2009,'country','KE','Male',897133,'Kakamega'),
('country','KE',2009,'continent','AFR','Total',47564296,'Kenya'),
('country','KE',2009,'continent','AFR','Intersex',1524,'Kenya'),
('country','KE',2009,'continent','AFR','Female',24014716,'Kenya'),
('country','KE',2009,'continent','AFR','Male',23548056,'Kenya'),
('level1','KE_1_035',2009,'country','KE','Female',451008,'Kericho'),
('level1','KE_1_035',2009,'country','KE','Intersex',28,'Kericho'),
('level1','KE_1_035',2009,'country','KE','Total',901777,'Kericho'),
('level1','KE_1_035',2009,'country','KE','Male',450741,'Kericho'),
('level1','KE_1_022',2009,'country','KE','Intersex',135,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Female',1230454,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Male',1187146,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Total',2417735,'Kiambu'),
('level1','KE_1_003',2009,'country','KE','Female',749673,'Kilifi'),
('level1','KE_1_003',2009,'country','KE','Intersex',25,'Kilifi'),
('level1','KE_1_003',2009,'country','KE','Male',704089,'Kilifi'),
('level1','KE_1_003',2009,'country','KE','Total',1453787,'Kilifi'),
('level1','KE_1_020',2009,'country','KE','Male',302011,'Kirinyaga'),
('level1','KE_1_020',2009,'country','KE','Female',308369,'Kirinyaga'),
('level1','KE_1_020',2009,'country','KE','Total',610411,'Kirinyaga'),
('level1','KE_1_020',2009,'country','KE','Intersex',31,'Kirinyaga'),
('level1','KE_1_045',2009,'country','KE','Male',605784,'Kisii'),
('level1','KE_1_045',2009,'country','KE','Intersex',38,'Kisii'),
('level1','KE_1_045',2009,'country','KE','Female',661038,'Kisii'),
('level1','KE_1_045',2009,'country','KE','Total',1266860,'Kisii'),
('level1','KE_1_042',2009,'country','KE','Male',560942,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Total',1155574,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Female',594609,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Intersex',23,'Kisumu'),
('level1','KE_1_015',2009,'country','KE','Intersex',33,'Kitui'),
('level1','KE_1_015',2009,'country','KE','Female',587151,'Kitui'),
('level1','KE_1_015',2009,'country','KE','Total',1136187,'Kitui'),
('level1','KE_1_015',2009,'country','KE','Male',549003,'Kitui'),
('level1','KE_1_002',2009,'country','KE','Total',866820,'Kwale'),
('level1','KE_1_002',2009,'country','KE','Intersex',18,'Kwale'),
('level1','KE_1_002',2009,'country','KE','Female',441681,'Kwale'),
('level1','KE_1_002',2009,'country','KE','Male',425121,'Kwale'),
('level1','KE_1_031',2009,'country','KE','Male',259440,'Laikipia'),
('level1','KE_1_031',2009,'country','KE','Total',518560,'Laikipia'),
('level1','KE_1_031',2009,'country','KE','Intersex',18,'Laikipia'),
('level1','KE_1_031',2009,'country','KE','Female',259102,'Laikipia'),
('level1','KE_1_005',2009,'country','KE','Male',76103,'Lamu'),
('level1','KE_1_005',2009,'country','KE','Total',143920,'Lamu'),
('level1','KE_1_005',2009,'country','KE','Intersex',4,'Lamu'),
('level1','KE_1_005',2009,'country','KE','Female',67813,'Lamu'),
('level1','KE_1_016',2009,'country','KE','Total',1421932,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Intersex',34,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Male',710707,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Female',711191,'Machakos'),
('level1','KE_1_017',2009,'country','KE','Intersex',20,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Total',987653,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Male',489691,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Female',497942,'Makueni'),
('level1','KE_1_009',2009,'country','KE','Female',432444,'Mandera'),
('level1','KE_1_009',2009,'country','KE','Male',434976,'Mandera'),
('level1','KE_1_009',2009,'country','KE','Total',867457,'Mandera'),
('level1','KE_1_009',2009,'country','KE','Intersex',37,'Mandera'),
('level1','KE_1_010',2009,'country','KE','Female',216219,'Marsabit'),
('level1','KE_1_010',2009,'country','KE','Male',243548,'Marsabit'),
('level1','KE_1_010',2009,'country','KE','Intersex',18,'Marsabit'),
('level1','KE_1_010',2009,'country','KE','Total',459785,'Marsabit'),
('level1','KE_1_012',2009,'country','KE','Intersex',41,'Meru'),
('level1','KE_1_012',2009,'country','KE','Female',777975,'Meru'),
('level1','KE_1_012',2009,'country','KE','Male',767698,'Meru'),
('level1','KE_1_012',2009,'country','KE','Total',1545714,'Meru'),
('level1','KE_1_044',2009,'country','KE','Female',580214,'Migori'),
('level1','KE_1_044',2009,'country','KE','Intersex',35,'Migori'),
('level1','KE_1_044',2009,'country','KE','Male',536187,'Migori'),
('level1','KE_1_044',2009,'country','KE','Total',1116436,'Migori'),
('level1','KE_1_001',2009,'country','KE','Intersex',30,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Total',1208333,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Male',610257,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Female',598046,'Mombasa'),
('level1','KE_1_021',2009,'country','KE','Female',532669,'Murang''a'),
('level1','KE_1_021',2009,'country','KE','Total',1056640,'Murang''a'),
('level1','KE_1_021',2009,'country','KE','Intersex',31,'Murang''a'),
('level1','KE_1_021',2009,'country','KE','Male',523940,'Murang''a'),
('level1','KE_1_047',2009,'country','KE','Intersex',245,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Female',2204376,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Total',4397073,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Male',2192452,'Nairobi'),
('level1','KE_1_032',2009,'country','KE','Intersex',95,'Nakuru'),
('level1','KE_1_032',2009,'country','KE','Female',1084835,'Nakuru'),
('level1','KE_1_032',2009,'country','KE','Male',1077272,'Nakuru'),
('level1','KE_1_032',2009,'country','KE','Total',2162202,'Nakuru'),
('level1','KE_1_029',2009,'country','KE','Intersex',22,'Nandi'),
('level1','KE_1_029',2009,'country','KE','Total',885711,'Nandi'),
('level1','KE_1_029',2009,'country','KE','Male',441259,'Nandi'),
('level1','KE_1_029',2009,'country','KE','Female',444430,'Nandi'),
('level1','KE_1_033',2009,'country','KE','Male',579042,'Narok'),
('level1','KE_1_033',2009,'country','KE','Female',578805,'Narok'),
('level1','KE_1_033',2009,'country','KE','Total',1157873,'Narok'),
('level1','KE_1_033',2009,'country','KE','Intersex',26,'Narok'),
('level1','KE_1_046',2009,'country','KE','Male',290907,'Nyamira'),
('level1','KE_1_046',2009,'country','KE','Female',314656,'Nyamira'),
('level1','KE_1_046',2009,'country','KE','Intersex',13,'Nyamira'),
('level1','KE_1_046',2009,'country','KE','Total',605576,'Nyamira'),
('level1','KE_1_018',2009,'country','KE','Total',638289,'Nyandarua'),
('level1','KE_1_018',2009,'country','KE','Female',323247,'Nyandarua'),
('level1','KE_1_018',2009,'country','KE','Intersex',20,'Nyandarua'),
('level1','KE_1_018',2009,'country','KE','Male',315022,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE','Male',374288,'Nyeri'),
('level1','KE_1_019',2009,'country','KE','Total',759164,'Nyeri'),
('level1','KE_1_019',2009,'country','KE','Female',384845,'Nyeri'),
('level1','KE_1_019',2009,'country','KE','Intersex',31,'Nyeri'),
('level1','KE_1_025',2009,'country','KE','Intersex',7,'Samburu'),
('level1','KE_1_025',2009,'country','KE','Male',156774,'Samburu'),
('level1','KE_1_025',2009,'country','KE','Total',310327,'Samburu'),
('level1','KE_1_025',2009,'country','KE','Female',153546,'Samburu'),
('level1','KE_1_041',2009,'country','KE','Male',471669,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Female',521496,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Total',993183,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Intersex',18,'Siaya'),
('level1','KE_1_006',2009,'country','KE','Male',173337,'Taita Taveta'),
('level1','KE_1_006',2009,'country','KE','Intersex',7,'Taita Taveta'),
('level1','KE_1_006',2009,'country','KE','Total',340671,'Taita Taveta'),
('level1','KE_1_006',2009,'country','KE','Female',167327,'Taita Taveta'),
('level1','KE_1_004',2009,'country','KE','Total',315943,'Tana River'),
('level1','KE_1_004',2009,'country','KE','Intersex',2,'Tana River'),
('level1','KE_1_004',2009,'country','KE','Male',158550,'Tana River'),
('level1','KE_1_004',2009,'country','KE','Female',157391,'Tana River'),
('level1','KE_1_013',2009,'country','KE','Total',393177,'Tharaka-Nithi'),
('level1','KE_1_013',2009,'country','KE','Female',199406,'Tharaka-Nithi'),
('level1','KE_1_013',2009,'country','KE','Intersex',7,'Tharaka-Nithi'),
('level1','KE_1_013',2009,'country','KE','Male',193764,'Tharaka-Nithi'),
('level1','KE_1_023',2009,'country','KE','Male',478087,'Turkana'),
('level1','KE_1_023',2009,'country','KE','Total',926976,'Turkana'),
('level1','KE_1_023',2009,'country','KE','Intersex',21,'Turkana'),
('level1','KE_1_023',2009,'country','KE','Female',448868,'Turkana'),
('level1','KE_1_027',2009,'country','KE','Intersex',28,'Uasin Gishu'),
('level1','KE_1_027',2009,'country','KE','Female',582889,'Uasin Gishu'),
('level1','KE_1_027',2009,'country','KE','Total',1163186,'Uasin Gishu'),
('level1','KE_1_027',2009,'country','KE','Male',580269,'Uasin Gishu'),
('level1','KE_1_038',2009,'country','KE','Total',590013,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Female',306323,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Intersex',12,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Male',283678,'Vihiga'),
('level1','KE_1_008',2009,'country','KE','Intersex',49,'Wajir'),
('level1','KE_1_008',2009,'country','KE','Total',781263,'Wajir'),
('level1','KE_1_008',2009,'country','KE','Male',415374,'Wajir'),
('level1','KE_1_008',2009,'country','KE','Female',365840,'Wajir'),
('level1','KE_1_024',2009,'country','KE','Male',307013,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Total',621241,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Intersex',15,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Female',314213,'West Pokot'),
('level1','KE_1_040',2009,'country','KE','Total',142408,'Busia'),
('level1','KE_1_040',2009,'country','KE','Female',73373,'Busia'),
('level1','KE_1_040',2009,'country','KE','Male',69034,'Busia'),
('level1','KE_1_040',2009,'country','KE','Intersex',1,'Busia'),
('level1','KE_1_007',2009,'country','KE','Female',80449,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Total',163914,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Male',83460,'Garissa'),
('level1','KE_1_007',2009,'country','KE','Intersex',5,'Garissa'),
('level1','KE_1_043',2009,'country','KE','Female',61681,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Male',55756,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Intersex',2,'Homa Bay'),
('level1','KE_1_043',2009,'country','KE','Total',117439,'Homa Bay'),
('level1','KE_1_011',2009,'country','KE','Intersex',5,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Female',60647,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Male',60414,'Isiolo'),
('level1','KE_1_011',2009,'country','KE','Total',121066,'Isiolo'),
('level1','KE_1_022',2009,'country','KE','Female',76225,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Total',145903,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Intersex',17,'Kiambu'),
('level1','KE_1_022',2009,'country','KE','Male',69661,'Kiambu'),
('level1','KE_1_016',2009,'country','KE','Intersex',6,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Female',85114,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Total',170606,'Machakos'),
('level1','KE_1_016',2009,'country','KE','Male',85486,'Machakos'),
('level1','KE_1_017',2009,'country','KE','Female',64955,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Intersex',2,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Total',130375,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Male',65418,'Makueni'),
('level1','KE_1_041',2009,'country','KE','Female',118433,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Intersex',4,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Male',105906,'Siaya'),
('level1','KE_1_041',2009,'country','KE','Total',224343,'Siaya'),
('level1','KE_1_006',2009,'country','KE','Female',27573,'Taita'),
('level1','KE_1_006',2009,'country','KE','Intersex',NULL,'Taita'),
('level1','KE_1_006',2009,'country','KE','Total',55959,'Taita'),
('level1','KE_1_006',2009,'country','KE','Male',28386,'Taita'),
('level1','KE_1_006',2009,'country','KE','Male',47410,'Taveta'),
('level1','KE_1_006',2009,'country','KE','Total',91222,'Taveta'),
('level1','KE_1_006',2009,'country','KE','Intersex',NULL,'Taveta'),
('level1','KE_1_006',2009,'country','KE','Female',43812,'Taveta'),
('level1','KE_1_038',2009,'country','KE','Intersex',3,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Male',45788,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Female',49501,'Vihiga'),
('level1','KE_1_038',2009,'country','KE','Total',95292,'Vihiga'),
('level1','KE_1_024',2009,'country','KE','Intersex',NULL,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Total',184446,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Male',91820,'West Pokot'),
('level1','KE_1_024',2009,'country','KE','Female',92626,'West Pokot'),
('level1','ZA_1_003',2009,'country','ZA','Female',3669481,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Male',3327495,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Female',1454749,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Male',1379965,'Free State'),
('level1','ZA_1_009',2009,'country','ZA','Female',6646455,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Male',6753269,'Gauteng'),
('level1','ZA_1_001',2009,'country','ZA','Male',5306295,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Female',5758945,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Female',3060543,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Male',2738547,'Limpopo'),
('level1','ZA_1_004',2009,'country','ZA','Male',2139187,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Female',2196776,'Mpumalanga'),
('level1','ZA_1_007',2009,'country','ZA','Male',1909589,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Female',1838846,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Male',596421,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Female',597359,'Northern Cape'),
('country','ZA',2009,'continent','AFR','Female',28406428,'South Africa'),
('country','ZA',2009,'continent','AFR','Male',27247226,'South Africa'),
('level1','ZA_1_008',2009,'country','ZA','Female',3183273,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Male',3096457,'Western Cape');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','KE','allPopulationByGenders','"Kenya Population and Housing Census, 2019"','https://open.africa/dataset/2019-kenya-population-and-housing-census/resource/d0c95fee-9d00-453a-b343-7c195e81b9f1') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','KE','allPopulationByGenders','"Kenya Population and Housing Census, 2019"','https://open.africa/dataset/2019-kenya-population-and-housing-census/resource/d0c95fee-9d00-453a-b343-7c195e81b9f1') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allPopulationByGenders','"Community Survey, 2016"','https://open.africa/dataset/community-survey-south-africa-2016/resource/ae3e7faf-d9c2-4996-880a-adaf9017d087') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allPopulationByGenders','"Community Survey, 2016"','https://open.africa/dataset/community-survey-south-africa-2016/resource/ae3e7faf-d9c2-4996-880a-adaf9017d087') on conflict do nothing;
