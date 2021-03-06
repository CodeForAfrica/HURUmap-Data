SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.percent_of_individuals_below_poverty_line DROP CONSTRAINT IF EXISTS pk_percent_of_individuals_below_poverty_line;
DROP TABLE IF EXISTS public.percent_of_individuals_below_poverty_line;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.percent_of_individuals_below_poverty_line (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.percent_of_individuals_below_poverty_line ADD CONSTRAINT pk_percent_of_individuals_below_poverty_line PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, value, name);

INSERT INTO public.percent_of_individuals_below_poverty_line VALUES
('country','KE',2009,'continent','AFR',45.2,'Kenya'),
('level1','KE_1_047',2009,'country','KE',21.8,'Nairobi'),
('level2','KE_2_047274',2009,'level1','KE_1_047',25.5,'Westlands'),
('level2','KE_2_047277',2009,'level1','KE_1_047',17,'Langata'),
('level2','KE_2_047278',2009,'level1','KE_1_047',32.2,'Kibra'),
('level2','KE_2_047279',2009,'level1','KE_1_047',25.2,'Roysambu'),
('level2','KE_2_047280',2009,'level1','KE_1_047',21.8,'Kasarani'),
('level2','KE_2_047281',2009,'level1','KE_1_047',33.1,'Ruaraka'),
('level2','KE_2_047282',2009,'level1','KE_1_047',25.3,'Embakasi South'),
('level2','KE_2_047283',2009,'level1','KE_1_047',23.3,'Embakasi North'),
('level2','KE_2_047284',2009,'level1','KE_1_047',10.9,'Embakasi Central'),
('level2','KE_2_047285',2009,'level1','KE_1_047',15.9,'Embakasi East'),
('level2','KE_2_047286',2009,'level1','KE_1_047',10.3,'Embakasi West'),
('level2','KE_2_047287',2009,'level1','KE_1_047',11.3,'Makadara'),
('level2','KE_2_047288',2009,'level1','KE_1_047',15.1,'Kamukunji'),
('level2','KE_2_047289',2009,'level1','KE_1_047',16.4,'Starehe'),
('level2','KE_2_047290',2009,'level1','KE_1_047',36.5,'Mathare'),
('level1','KE_1_018',2009,'country','KE',38.8,'Nyandarua'),
('level2','KE_2_018089',2009,'level1','KE_1_018',39,'Kinangop'),
('level2','KE_2_018090',2009,'level1','KE_1_018',46.1,'Kipipiri'),
('level2','KE_2_018091',2009,'level1','KE_1_018',40.5,'Ol Kalou'),
('level2','KE_2_018092',2009,'level1','KE_1_018',34.6,'Ol Jorok'),
('level2','KE_2_018093',2009,'level1','KE_1_018',33.2,'Ndaragwa'),
('level1','KE_1_019',2009,'country','KE',27.6,'Nyeri'),
('level2','KE_2_019094',2009,'level1','KE_1_019',26.5,'Tetu'),
('level2','KE_2_019095',2009,'level1','KE_1_019',27.2,'Kieni'),
('level2','KE_2_019096',2009,'level1','KE_1_019',25.3,'Mathira'),
('level2','KE_2_019097',2009,'level1','KE_1_019',28.1,'Othaya'),
('level2','KE_2_019099',2009,'level1','KE_1_019',26.6,'Nyeri Town'),
('level1','KE_1_020',2009,'country','KE',25.9,'Kirinyaga'),
('level2','KE_2_020100',2009,'level1','KE_1_020',29.1,'Mwea'),
('level2','KE_2_020101',2009,'level1','KE_1_020',23.1,'Gichugu'),
('level2','KE_2_020102',2009,'level1','KE_1_020',25.7,'Ndia'),
('level2','KE_2_020103',2009,'level1','KE_1_020',23.9,'Kirinyaga Central'),
('level2','KE_2_021104',2009,'level1','KE_1_021',26,'Kangema'),
('level2','KE_2_021105',2009,'level1','KE_1_021',27.1,'Mathioya'),
('level2','KE_2_021106',2009,'level1','KE_1_021',33,'Kiharu'),
('level2','KE_2_021107',2009,'level1','KE_1_021',33.9,'Kigumo'),
('level2','KE_2_021108',2009,'level1','KE_1_021',39.4,'Maragwa'),
('level2','KE_2_021109',2009,'level1','KE_1_021',34.2,'Kandara'),
('level2','KE_2_021110',2009,'level1','KE_1_021',33.1,'Gatanga'),
('level1','KE_1_022',2009,'country','KE',24.2,'Kiambu'),
('level2','KE_2_022111',2009,'level1','KE_1_022',26.4,'Gatundu South'),
('level2','KE_2_022112',2009,'level1','KE_1_022',31.4,'Gatundu North'),
('level2','KE_2_022113',2009,'level1','KE_1_022',20.5,'Juja'),
('level2','KE_2_022114',2009,'level1','KE_1_022',25.4,'Thika Town'),
('level2','KE_2_022115',2009,'level1','KE_1_022',20.3,'Ruiru'),
('level2','KE_2_022116',2009,'level1','KE_1_022',18.3,'Githunguri'),
('level1','KE_1_022',2009,'country','KE',22.1,'Kiambu'),
('level2','KE_2_022118',2009,'level1','KE_1_022',19.6,'Kiambaa'),
('level2','KE_2_022119',2009,'level1','KE_1_022',20.9,'Kabete'),
('level2','KE_2_022120',2009,'level1','KE_1_022',26.9,'Kikuyu'),
('level2','KE_2_022121',2009,'level1','KE_1_022',34,'Limuru'),
('level2','KE_2_022122',2009,'level1','KE_1_022',29.9,'Lari'),
('level1','KE_1_001',2009,'country','KE',34.8,'Mombasa'),
('level2','KE_2_001001',2009,'level1','KE_1_001',35.2,'Changamwe'),
('level2','KE_2_001002',2009,'level1','KE_1_001',33,'Jomvu'),
('level2','KE_2_001003',2009,'level1','KE_1_001',39.3,'Kisauni'),
('level2','KE_2_001004',2009,'level1','KE_1_001',34.5,'Nyali'),
('level2','KE_2_001005',2009,'level1','KE_1_001',34.1,'Likoni'),
('level2','KE_2_001006',2009,'level1','KE_1_001',31.4,'Mvita'),
('level1','KE_1_002',2009,'country','KE',70.7,'Kwale'),
('level2','KE_2_002008',2009,'level1','KE_1_002',80.7,'Lunga Lunga'),
('level2','KE_2_002009',2009,'level1','KE_1_002',57.1,'Matuga'),
('level2','KE_2_002010',2009,'level1','KE_1_002',84.2,'Kinango'),
('level1','KE_1_003',2009,'country','KE',58.4,'Kilifi'),
('level2','KE_2_003011',2009,'level1','KE_1_003',54.3,'Kilifi North'),
('level2','KE_2_003012',2009,'level1','KE_1_003',39.2,'Kilifi South'),
('level2','KE_2_003013',2009,'level1','KE_1_003',55.1,'Kaloleni'),
('level2','KE_2_003014',2009,'level1','KE_1_003',39.1,'Rabai'),
('level2','KE_2_003015',2009,'level1','KE_1_003',82.5,'Ganze'),
('level2','KE_2_003016',2009,'level1','KE_1_003',50,'Malindi'),
('level2','KE_2_003017',2009,'level1','KE_1_003',84.5,'Magarini'),
('level1','KE_1_004',2009,'country','KE',75.6,'Tana River'),
('level2','KE_2_004018',2009,'level1','KE_1_004',76.3,'Garsen'),
('level2','KE_2_004019',2009,'level1','KE_1_004',74.5,'Galole'),
('level2','KE_2_004020',2009,'level1','KE_1_004',75.6,'Bura'),
('level1','KE_1_005',2009,'country','KE',32.3,'Lamu'),
('level2','KE_2_005021',2009,'level1','KE_1_005',24.6,'Lamu East'),
('level2','KE_2_005022',2009,'level1','KE_1_005',34,'Lamu West'),
('level1','KE_1_006',2009,'country','KE',50.4,'Taita Taveta'),
('level1','KE_1_006',2009,'country','KE',58.2,'Taita Taveta'),
('level2','KE_2_006024',2009,'level1','KE_1_006',52.4,'Wundanyi'),
('level2','KE_2_006025',2009,'level1','KE_1_006',50.1,'Mwatate'),
('level2','KE_2_006026',2009,'level1','KE_1_006',43,'Voi'),
('level1','KE_1_010',2009,'country','KE',75.8,'Marsabit'),
('level2','KE_2_010045',2009,'level1','KE_1_010',78.1,'Moyale'),
('level2','KE_2_010046',2009,'level1','KE_1_010',77.9,'North Horr'),
('level2','KE_2_010047',2009,'level1','KE_1_010',58.7,'Saku'),
('level2','KE_2_010048',2009,'level1','KE_1_010',81.6,'Laisamis'),
('level1','KE_1_011',2009,'country','KE',65.3,'Isiolo'),
('level2','KE_2_011049',2009,'level1','KE_1_011',61,'Isiolo North'),
('level2','KE_2_011050',2009,'level1','KE_1_011',80,'Isiolo South'),
('level1','KE_1_012',2009,'country','KE',31,'Meru'),
('level2','KE_2_012051',2009,'level1','KE_1_012',37.6,'Igembe South'),
('level2','KE_2_012052',2009,'level1','KE_1_012',33.2,'Igembe Central'),
('level2','KE_2_012053',2009,'level1','KE_1_012',49.8,'Igembe North'),
('level2','KE_2_012054',2009,'level1','KE_1_012',26,'Tigania West'),
('level2','KE_2_012055',2009,'level1','KE_1_012',39.3,'Tigania East'),
('level2','KE_2_012056',2009,'level1','KE_1_012',19.5,'North Imenti'),
('level2','KE_2_012057',2009,'level1','KE_1_012',27.5,'Buuri'),
('level2','KE_2_012059',2009,'level1','KE_1_012',21,'South Imenti'),
('level2','KE_2_013061',2009,'level1','KE_1_013',23.3,'Maara'),
('level2','KE_2_013062',2009,'level1','KE_1_013',65.1,'Tharaka'),
('level1','KE_1_014',2009,'country','KE',35.3,'Embu'),
('level2','KE_2_014063',2009,'level1','KE_1_014',22.7,'Manyatta'),
('level2','KE_2_014064',2009,'level1','KE_1_014',25.6,'Runyenjes'),
('level1','KE_1_015',2009,'country','KE',60.4,'Kitui'),
('level2','KE_2_015067',2009,'level1','KE_1_015',81.3,'Mwingi North'),
('level2','KE_2_015068',2009,'level1','KE_1_015',41,'Mwingi West'),
('level2','KE_2_015070',2009,'level1','KE_1_015',26.5,'Kitui West'),
('level2','KE_2_015071',2009,'level1','KE_1_015',50.4,'Kitui Rural'),
('level2','KE_2_015072',2009,'level1','KE_1_015',46.8,'Kitui Central'),
('level2','KE_2_015073',2009,'level1','KE_1_015',73.4,'Kitui East'),
('level2','KE_2_015074',2009,'level1','KE_1_015',74.2,'Kitui South'),
('level1','KE_1_016',2009,'country','KE',42.6,'Machakos'),
('level2','KE_2_016075',2009,'level1','KE_1_016',61.3,'Masinga'),
('level2','KE_2_016076',2009,'level1','KE_1_016',54,'Yatta'),
('level2','KE_2_016077',2009,'level1','KE_1_016',48.4,'Kangundo'),
('level2','KE_2_016078',2009,'level1','KE_1_016',49.8,'Matungulu'),
('level2','KE_2_016079',2009,'level1','KE_1_016',30.7,'Kathiani'),
('level2','KE_2_016080',2009,'level1','KE_1_016',22.8,'Mavoko'),
('level2','KE_2_016081',2009,'level1','KE_1_016',34.5,'Machakos Town'),
('level2','KE_2_016082',2009,'level1','KE_1_016',43.3,'Mwala'),
('level1','KE_1_017',2009,'country','KE',60.6,'Makueni'),
('level2','KE_2_017083',2009,'level1','KE_1_017',52.8,'Mbooni'),
('level2','KE_2_017084',2009,'level1','KE_1_017',42.9,'Kilome'),
('level2','KE_2_017085',2009,'level1','KE_1_017',48,'Kaiti'),
('level1','KE_1_017',2009,'country','KE',70.7,'Makueni'),
('level2','KE_2_017087',2009,'level1','KE_1_017',64.3,'Kibwezi West'),
('level2','KE_2_017088',2009,'level1','KE_1_017',75.4,'Kibwezi East'),
('level1','KE_1_007',2009,'country','KE',58.9,'Garissa'),
('level2','KE_2_007028',2009,'level1','KE_1_007',70.8,'Balambala'),
('level2','KE_2_007029',2009,'level1','KE_1_007',68.2,'Lagdera'),
('level2','KE_2_007030',2009,'level1','KE_1_007',60.5,'Dadaab'),
('level2','KE_2_007031',2009,'level1','KE_1_007',59.6,'Fafi'),
('level2','KE_2_007032',2009,'level1','KE_1_007',60.2,'Ijara'),
('level1','KE_1_008',2009,'country','KE',84.2,'Wajir'),
('level2','KE_2_008033',2009,'level1','KE_1_008',86.9,'Wajir North'),
('level2','KE_2_008034',2009,'level1','KE_1_008',78.2,'Wajir East'),
('level2','KE_2_008035',2009,'level1','KE_1_008',84.9,'Tarbaj'),
('level2','KE_2_008036',2009,'level1','KE_1_008',85.4,'Wajir West'),
('level2','KE_2_008037',2009,'level1','KE_1_008',88.4,'Eldas'),
('level2','KE_2_008038',2009,'level1','KE_1_008',78.4,'Wajir South'),
('level1','KE_1_009',2009,'country','KE',85.8,'Mandera'),
('level2','KE_2_009039',2009,'level1','KE_1_009',85.9,'Mandera West'),
('level2','KE_2_009040',2009,'level1','KE_1_009',86.5,'Banissa'),
('level2','KE_2_009041',2009,'level1','KE_1_009',87.5,'Mandera North'),
('level2','KE_2_009042',2009,'level1','KE_1_009',91.6,'Mandera South'),
('level2','KE_2_009043',2009,'level1','KE_1_009',68.3,'Mandera East'),
('level2','KE_2_009044',2009,'level1','KE_1_009',85.9,'Lafey'),
('level1','KE_1_041',2009,'country','KE',38.2,'Siaya'),
('level2','KE_2_041232',2009,'level1','KE_1_041',40.8,'Ugenya'),
('level2','KE_2_041233',2009,'level1','KE_1_041',39,'Ugunja'),
('level2','KE_2_041234',2009,'level1','KE_1_041',39.8,'Alego Usonga'),
('level2','KE_2_041235',2009,'level1','KE_1_041',44,'Gem'),
('level2','KE_2_041236',2009,'level1','KE_1_041',33.8,'Bondo'),
('level2','KE_2_041237',2009,'level1','KE_1_041',31.4,'Rarieda'),
('level1','KE_1_042',2009,'country','KE',39.9,'Kisumu'),
('level2','KE_2_042238',2009,'level1','KE_1_042',39.5,'Kisumu East'),
('level2','KE_2_042239',2009,'level1','KE_1_042',45.9,'Kisumu West'),
('level2','KE_2_042240',2009,'level1','KE_1_042',18.6,'Kisumu Central'),
('level2','KE_2_042241',2009,'level1','KE_1_042',43.6,'Seme'),
('level2','KE_2_042242',2009,'level1','KE_1_042',47.3,'Nyando'),
('level2','KE_2_042243',2009,'level1','KE_1_042',43.4,'Muhoroni'),
('level2','KE_2_042244',2009,'level1','KE_1_042',46.4,'Nyakach'),
('level1','KE_1_043',2009,'country','KE',48.4,'Homa Bay'),
('level2','KE_2_043245',2009,'level1','KE_1_043',49.4,'Kasipul'),
('level2','KE_2_043246',2009,'level1','KE_1_043',51.5,'Kabondo Kasipul'),
('level2','KE_2_043247',2009,'level1','KE_1_043',45.6,'Karachuonyo'),
('level2','KE_2_043248',2009,'level1','KE_1_043',47.4,'Rangwe'),
('level2','KE_2_043250',2009,'level1','KE_1_043',51,'Ndhiwa'),
('level2','KE_2_043251',2009,'level1','KE_1_043',41.7,'Suba North'),
('level2','KE_2_043252',2009,'level1','KE_1_043',52.8,'Suba South'),
('level1','KE_1_044',2009,'country','KE',49.6,'Migori'),
('level2','KE_2_044253',2009,'level1','KE_1_044',38.9,'Rongo'),
('level2','KE_2_044254',2009,'level1','KE_1_044',39.3,'Awendo'),
('level2','KE_2_044255',2009,'level1','KE_1_044',54.4,'Suna East'),
('level2','KE_2_044256',2009,'level1','KE_1_044',53.2,'Suna West'),
('level2','KE_2_044257',2009,'level1','KE_1_044',53.4,'Uriri'),
('level2','KE_2_044258',2009,'level1','KE_1_044',43.5,'Nyatike'),
('level2','KE_2_044259',2009,'level1','KE_1_044',55.6,'Kuria West'),
('level2','KE_2_044260',2009,'level1','KE_1_044',59.6,'Kuria East'),
('level1','KE_1_045',2009,'country','KE',51.4,'Kisii'),
('level2','KE_2_045261',2009,'level1','KE_1_045',48.2,'Bonchari'),
('level2','KE_2_045262',2009,'level1','KE_1_045',52.5,'South Mugirango'),
('level2','KE_2_045263',2009,'level1','KE_1_045',56.6,'Bomachoge Borabu'),
('level2','KE_2_045264',2009,'level1','KE_1_045',53.9,'Bobasi'),
('level2','KE_2_045265',2009,'level1','KE_1_045',51.1,'Bomachoge Chache'),
('level2','KE_2_045266',2009,'level1','KE_1_045',51.8,'Nyaribari Masaba'),
('level2','KE_2_045267',2009,'level1','KE_1_045',48.1,'Nyaribari Chache'),
('level2','KE_2_045268',2009,'level1','KE_1_045',63.3,'Kitutu Chache North'),
('level2','KE_2_045269',2009,'level1','KE_1_045',38.8,'Kitutu Chache South'),
('level1','KE_1_046',2009,'country','KE',50.7,'Nyamira'),
('level2','KE_2_046270',2009,'level1','KE_1_046',50.1,'Kitutu Masaba'),
('level2','KE_2_046271',2009,'level1','KE_1_046',52.1,'West Mugirango'),
('level2','KE_2_046272',2009,'level1','KE_1_046',50.7,'North Mugirango'),
('level2','KE_2_046273',2009,'level1','KE_1_046',50.1,'Borabu'),
('level1','KE_1_023',2009,'country','KE',87.5,'Turkana'),
('level2','KE_2_023123',2009,'level1','KE_1_023',91.7,'Turkana North'),
('level2','KE_2_023124',2009,'level1','KE_1_023',85.8,'Turkana West'),
('level2','KE_2_023125',2009,'level1','KE_1_023',77.5,'Turkana Central'),
('level2','KE_2_023126',2009,'level1','KE_1_023',91.4,'Loima'),
('level2','KE_2_023127',2009,'level1','KE_1_023',87.7,'Turkana South'),
('level2','KE_2_023128',2009,'level1','KE_1_023',93.1,'Turkana East'),
('level1','KE_1_024',2009,'country','KE',66.3,'West Pokot'),
('level2','KE_2_024129',2009,'level1','KE_1_024',57.9,'Kapenguria'),
('level2','KE_2_024130',2009,'level1','KE_1_024',67.8,'Sigor'),
('level2','KE_2_024131',2009,'level1','KE_1_024',77.5,'Kacheliba'),
('level2','KE_2_024132',2009,'level1','KE_1_024',62.8,'Pokot South'),
('level1','KE_1_025',2009,'country','KE',71.4,'Samburu'),
('level2','KE_2_025133',2009,'level1','KE_1_025',71,'Samburu West'),
('level2','KE_2_025134',2009,'level1','KE_1_025',71.4,'Samburu North'),
('level2','KE_2_025135',2009,'level1','KE_1_025',71.8,'Samburu East'),
('level1','KE_1_026',2009,'country','KE',41.2,'Trans-Nzoia'),
('level2','KE_2_026136',2009,'level1','KE_1_026',46.4,'Kwanza'),
('level2','KE_2_026137',2009,'level1','KE_1_026',46.5,'Endebess'),
('level2','KE_2_026138',2009,'level1','KE_1_026',32.7,'Saboti'),
('level2','KE_2_026139',2009,'level1','KE_1_026',39.9,'Kiminini'),
('level2','KE_2_026140',2009,'level1','KE_1_026',42.9,'Cherangany'),
('level1','KE_1_030',2009,'country','KE',52.2,'Baringo'),
('level2','KE_2_030157',2009,'level1','KE_1_030',72.9,'Tiaty'),
('level2','KE_2_030158',2009,'level1','KE_1_030',59.5,'Baringo North'),
('level2','KE_2_030159',2009,'level1','KE_1_030',47,'Baringo Central'),
('level2','KE_2_030160',2009,'level1','KE_1_030',51.7,'Baringo South'),
('level2','KE_2_030161',2009,'level1','KE_1_030',43.7,'Mogotio'),
('level2','KE_2_030162',2009,'level1','KE_1_030',29,'Eldama Ravine'),
('level2','KE_2_027141',2009,'level1','KE_1_027',43.1,'Soy'),
('level2','KE_2_027142',2009,'level1','KE_1_027',30.4,'Turbo'),
('level2','KE_2_027143',2009,'level1','KE_1_027',33.6,'Moiben'),
('level2','KE_2_027144',2009,'level1','KE_1_027',36.6,'Ainabkoi'),
('level2','KE_2_027145',2009,'level1','KE_1_027',23.3,'Kapseret'),
('level2','KE_2_027146',2009,'level1','KE_1_027',36.8,'Kesses'),
('level2','KE_2_028147',2009,'level1','KE_1_028',63.9,'Marakwet East'),
('level2','KE_2_028148',2009,'level1','KE_1_028',59.2,'Marakwet West'),
('level2','KE_2_028149',2009,'level1','KE_1_028',33.7,'Keiyo North'),
('level2','KE_2_028150',2009,'level1','KE_1_028',50.9,'Keiyo South'),
('level1','KE_1_029',2009,'country','KE',40,'Nandi'),
('level2','KE_2_029151',2009,'level1','KE_1_029',58.5,'Tinderet'),
('level2','KE_2_029152',2009,'level1','KE_1_029',43.3,'Aldai'),
('level2','KE_2_029153',2009,'level1','KE_1_029',36,'Nandi Hills'),
('level2','KE_2_029154',2009,'level1','KE_1_029',32.1,'Chesumei'),
('level2','KE_2_029155',2009,'level1','KE_1_029',30.9,'Emgwen'),
('level2','KE_2_029156',2009,'level1','KE_1_029',41.8,'Mosop'),
('level1','KE_1_031',2009,'country','KE',47.9,'Laikipia'),
('level2','KE_2_031163',2009,'level1','KE_1_031',47.2,'Laikipia West'),
('level2','KE_2_031164',2009,'level1','KE_1_031',37.7,'Laikipia East'),
('level1','KE_1_031',2009,'country','KE',63.8,'Laikipia'),
('level1','KE_1_032',2009,'country','KE',33.5,'Nakuru'),
('level2','KE_2_032166',2009,'level1','KE_1_032',26,'Molo'),
('level2','KE_2_032167',2009,'level1','KE_1_032',38,'Njoro'),
('level2','KE_2_032168',2009,'level1','KE_1_032',32.1,'Naivasha'),
('level2','KE_2_032169',2009,'level1','KE_1_032',33.3,'Gilgil'),
('level2','KE_2_032170',2009,'level1','KE_1_032',47.2,'Kuresoi South'),
('level2','KE_2_032171',2009,'level1','KE_1_032',42.8,'Kuresoi North'),
('level2','KE_2_032172',2009,'level1','KE_1_032',42.6,'Subukia'),
('level2','KE_2_032173',2009,'level1','KE_1_032',37.3,'Rongai'),
('level2','KE_2_032174',2009,'level1','KE_1_032',32.9,'Bahati'),
('level2','KE_2_032175',2009,'level1','KE_1_032',20.6,'Nakuru Town West'),
('level2','KE_2_032176',2009,'level1','KE_1_032',22.6,'Nakuru Town East'),
('level1','KE_1_033',2009,'country','KE',41,'Narok'),
('level2','KE_2_033177',2009,'level1','KE_1_033',42.7,'Kilgoris'),
('level2','KE_2_033178',2009,'level1','KE_1_033',49.7,'Emurua Dikirr'),
('level2','KE_2_033179',2009,'level1','KE_1_033',29.2,'Narok North'),
('level2','KE_2_033180',2009,'level1','KE_1_033',38.4,'Narok East'),
('level2','KE_2_033181',2009,'level1','KE_1_033',44.2,'Narok South'),
('level2','KE_2_033182',2009,'level1','KE_1_033',45.3,'Narok West'),
('level1','KE_1_034',2009,'country','KE',38,'Kajiado'),
('level2','KE_2_034183',2009,'level1','KE_1_034',18.3,'Kajiado North'),
('level2','KE_2_034184',2009,'level1','KE_1_034',52,'Kajiado Central'),
('level2','KE_2_034186',2009,'level1','KE_1_034',28.8,'Kajiado East'),
('level2','KE_2_034185',2009,'level1','KE_1_034',54.5,'Kajiado West'),
('level2','KE_2_034187',2009,'level1','KE_1_034',50.5,'Kajiado South'),
('level1','KE_1_035',2009,'country','KE',39.3,'Kericho'),
('level2','KE_2_035189',2009,'level1','KE_1_035',46.2,'Kipkelion West'),
('level2','KE_2_035190',2009,'level1','KE_1_035',26.1,'Ainamoi'),
('level2','KE_2_035192',2009,'level1','KE_1_035',34,'Belgut'),
('level2','KE_2_035193',2009,'level1','KE_1_035',45.6,'Sigowet/Soin'),
('level1','KE_1_036',2009,'country','KE',51.3,'Bomet'),
('level2','KE_2_036194',2009,'level1','KE_1_036',51,'Sotik'),
('level2','KE_2_036195',2009,'level1','KE_1_036',60.6,'Chepalungu'),
('level2','KE_2_036196',2009,'level1','KE_1_036',53,'Bomet East'),
('level2','KE_2_036197',2009,'level1','KE_1_036',47,'Bomet Central'),
('level2','KE_2_036198',2009,'level1','KE_1_036',43.5,'Konoin'),
('level1','KE_1_037',2009,'country','KE',49.2,'Kakamega'),
('level2','KE_2_037199',2009,'level1','KE_1_037',52.5,'Lugari'),
('level2','KE_2_037200',2009,'level1','KE_1_037',52.5,'Likuyani'),
('level2','KE_2_037201',2009,'level1','KE_1_037',49.4,'Malava'),
('level2','KE_2_037202',2009,'level1','KE_1_037',29.6,'Lurambi'),
('level2','KE_2_037203',2009,'level1','KE_1_037',51.1,'Navakholo'),
('level2','KE_2_037204',2009,'level1','KE_1_037',36.6,'Mumias West'),
('level2','KE_2_037205',2009,'level1','KE_1_037',49.3,'Mumias East'),
('level2','KE_2_037206',2009,'level1','KE_1_037',52.4,'Matungu'),
('level2','KE_2_037207',2009,'level1','KE_1_037',51.7,'Butere'),
('level2','KE_2_037208',2009,'level1','KE_1_037',59.8,'Khwisero'),
('level2','KE_2_037209',2009,'level1','KE_1_037',54.6,'Shinyalu'),
('level2','KE_2_037210',2009,'level1','KE_1_037',53.5,'Ikolomani'),
('level1','KE_1_038',2009,'country','KE',38.9,'Vihiga'),
('level1','KE_1_038',2009,'country','KE',30.9,'Vihiga'),
('level2','KE_2_038212',2009,'level1','KE_1_038',22.4,'Sabatia'),
('level2','KE_2_038213',2009,'level1','KE_1_038',50.8,'Hamisi'),
('level2','KE_2_038214',2009,'level1','KE_1_038',37.9,'Luanda'),
('level2','KE_2_038215',2009,'level1','KE_1_038',52,'Emuhaya'),
('level1','KE_1_039',2009,'country','KE',47.3,'Bungoma'),
('level2','KE_2_039217',2009,'level1','KE_1_039',53.6,'Sirisia'),
('level2','KE_2_039218',2009,'level1','KE_1_039',50.3,'Kabuchai'),
('level2','KE_2_039219',2009,'level1','KE_1_039',50.5,'Bumula'),
('level2','KE_2_039220',2009,'level1','KE_1_039',47.3,'Kanduyi'),
('level2','KE_2_039221',2009,'level1','KE_1_039',43.2,'Webuye East'),
('level2','KE_2_039222',2009,'level1','KE_1_039',49.1,'Webuye West'),
('level2','KE_2_039223',2009,'level1','KE_1_039',23.7,'Kimilili'),
('level2','KE_2_039224',2009,'level1','KE_1_039',46.5,'Tongaren'),
('level1','KE_1_040',2009,'country','KE',60.4,'Busia'),
('level2','KE_2_040225',2009,'level1','KE_1_040',57.2,'Teso North'),
('level2','KE_2_040226',2009,'level1','KE_1_040',59,'Teso South'),
('level2','KE_2_040227',2009,'level1','KE_1_040',59.3,'Nambale'),
('level2','KE_2_040228',2009,'level1','KE_1_040',56.6,'Matayos'),
('level2','KE_2_040229',2009,'level1','KE_1_040',65,'Butula'),
('level2','KE_2_040230',2009,'level1','KE_1_040',62.4,'Funyula'),
('level2','KE_2_040231',2009,'level1','KE_1_040',65,'Budalangi') ON CONFLICT DO NOTHING;
      
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','KE','allPercentOfIndividualsBelowPovertyLines','"Exploring Kenya Inequality National Report, 2017"','https://open.africa/dataset/exploring-kenya-inequality-national-report-2017/resource/90e440f3-bbee-416b-a2a5-454d9df9d8ad') ON CONFLICT DO NOTHING;
INSERT INTO public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','KE','allPercentOfIndividualsBelowPovertyLines','"Exploring Kenya Inequality National Report, 2017"','https://open.africa/dataset/exploring-kenya-inequality-national-report-2017/resource/90e440f3-bbee-416b-a2a5-454d9df9d8ad') ON CONFLICT DO NOTHING;
