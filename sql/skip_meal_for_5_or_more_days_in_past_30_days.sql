SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.skip_meal_for_5_or_more_days_in_past_30_days DROP CONSTRAINT IF EXISTS pk_skip_meal_for_5_or_more_days_in_past_30_days;
DROP TABLE IF EXISTS public.skip_meal_for_5_or_more_days_in_past_30_days;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.skip_meal_for_5_or_more_days_in_past_30_days (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

ALTER TABLE ONLY public.skip_meal_for_5_or_more_days_in_past_30_days ADD CONSTRAINT pk_skip_meal_for_5_or_more_days_in_past_30_days PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name);

INSERT INTO public.skip_meal_for_5_or_more_days_in_past_30_days VALUES
('level2','ZA_2_00244',2009,'level1','ZA_1_002','Do not know',135.4494,'Alfred Nzo'),
('level2','ZA_2_00244',2009,'level1','ZA_1_002','No',61222.26,'Alfred Nzo'),
('level2','ZA_2_00244',2009,'level1','ZA_1_002','Not applicable',712074.1,'Alfred Nzo'),
('level2','ZA_2_00244',2009,'level1','ZA_1_002','Unspecified',0,'Alfred Nzo'),
('level2','ZA_2_00244',2009,'level1','ZA_1_002','Yes',94432.18,'Alfred Nzo'),
('level2','ZA_2_00525',2009,'level1','ZA_1_005','Do not know',423.6742,'Amajuba'),
('level2','ZA_2_00525',2009,'level1','ZA_1_005','No',51883.66,'Amajuba'),
('level2','ZA_2_00525',2009,'level1','ZA_1_005','Not applicable',418658.3,'Amajuba'),
('level2','ZA_2_00525',2009,'level1','ZA_1_005','Unspecified',0,'Amajuba'),
('level2','ZA_2_00525',2009,'level1','ZA_1_005','Yes',60361.14,'Amajuba'),
('level2','ZA_2_00212',2009,'level1','ZA_1_002','Do not know',2495.109,'Amathole'),
('level2','ZA_2_00212',2009,'level1','ZA_1_002','No',79318.16,'Amathole'),
('level2','ZA_2_00212',2009,'level1','ZA_1_002','Not applicable',681414.8,'Amathole'),
('level2','ZA_2_00212',2009,'level1','ZA_1_002','Unspecified',167.9168,'Amathole'),
('level2','ZA_2_00212',2009,'level1','ZA_1_002','Yes',117394.4,'Amathole'),
('level2','ZA_2_00637',2009,'level1','ZA_1_006','Do not know',1601.444,'Bojanala'),
('level2','ZA_2_00637',2009,'level1','ZA_1_006','No',99743.62,'Bojanala'),
('level2','ZA_2_00637',2009,'level1','ZA_1_006','Not applicable',1405387,'Bojanala'),
('level2','ZA_2_00637',2009,'level1','ZA_1_006','Unspecified',477.9031,'Bojanala'),
('level2','ZA_2_00637',2009,'level1','ZA_1_006','Yes',149938.2,'Bojanala'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Do not know',1015.148,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Do not know',1015.148,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Do not know',1015.148,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Do not know',1015.148,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','No',72154.71,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','No',72154.71,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','No',72154.71,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','No',72154.71,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Not applicable',655647.9,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Not applicable',655647.9,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Not applicable',655647.9,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Not applicable',655647.9,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Unspecified',136.8616,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Unspecified',136.8616,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Unspecified',136.8616,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Unspecified',136.8616,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Yes',106042.5,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Yes',106042.5,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Yes',106042.5,'Buffalo City'),
('level2','ZA_2_00292',2009,'level1','ZA_1_002','Yes',106042.5,'Buffalo City'),
('level2','ZA_2_00210',2009,'level1','ZA_1_002','Do not know',16.89146,'Sarah Baartman'),
('level2','ZA_2_00210',2009,'level1','ZA_1_002','No',31375.83,'Sarah Baartman'),
('level2','ZA_2_00210',2009,'level1','ZA_1_002','Not applicable',418872.1,'Sarah Baartman'),
('level2','ZA_2_00210',2009,'level1','ZA_1_002','Unspecified',28.98945,'Sarah Baartman'),
('level2','ZA_2_00210',2009,'level1','ZA_1_002','Yes',29629.04,'Sarah Baartman'),
('level2','ZA_2_00102',2009,'level1','ZA_1_001','Do not know',200.3396,'Cape Winelands'),
('level2','ZA_2_00102',2009,'level1','ZA_1_001','No',50768.3,'Cape Winelands'),
('level2','ZA_2_00102',2009,'level1','ZA_1_001','Not applicable',777571.8,'Cape Winelands'),
('level2','ZA_2_00102',2009,'level1','ZA_1_001','Unspecified',119.1126,'Cape Winelands'),
('level2','ZA_2_00102',2009,'level1','ZA_1_001','Yes',37341.2,'Cape Winelands'),
('level2','ZA_2_00935',2009,'level1','ZA_1_009','Do not know',272.6547,'Capricorn'),
('level2','ZA_2_00935',2009,'level1','ZA_1_009','No',40361.1,'Capricorn'),
('level2','ZA_2_00935',2009,'level1','ZA_1_009','Not applicable',1205226,'Capricorn'),
('level2','ZA_2_00935',2009,'level1','ZA_1_009','Unspecified',54.24094,'Capricorn'),
('level2','ZA_2_00935',2009,'level1','ZA_1_009','Yes',84521.63,'Capricorn'),
('level2','ZA_2_00105',2009,'level1','ZA_1_001','Do not know',22.22682,'Central Karoo'),
('level2','ZA_2_00105',2009,'level1','ZA_1_001','No',3212.51,'Central Karoo'),
('level2','ZA_2_00105',2009,'level1','ZA_1_001','Not applicable',67996.77,'Central Karoo'),
('level2','ZA_2_00105',2009,'level1','ZA_1_001','Unspecified',65.2031,'Central Karoo'),
('level2','ZA_2_00105',2009,'level1','ZA_1_001','Yes',2950.523,'Central Karoo'),
('level2','ZA_2_00213',2009,'level1','ZA_1_002','Do not know',3489.524,'Chris Hani'),
('level2','ZA_2_00213',2009,'level1','ZA_1_002','No',46859.31,'Chris Hani'),
('level2','ZA_2_00213',2009,'level1','ZA_1_002','Not applicable',699986.6,'Chris Hani'),
('level2','ZA_2_00213',2009,'level1','ZA_1_002','Unspecified',326.1299,'Chris Hani'),
('level2','ZA_2_00213',2009,'level1','ZA_1_002','Yes',89393.05,'Chris Hani'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Do not know',1474.238,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Do not know',1474.238,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Do not know',1474.238,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Do not know',1474.238,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','No',163644.8,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','No',163644.8,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','No',163644.8,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','No',163644.8,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Not applicable',3597215,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Not applicable',3597215,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Not applicable',3597215,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Not applicable',3597215,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Unspecified',904.243,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Unspecified',904.243,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Unspecified',904.243,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Unspecified',904.243,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Yes',241776.9,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Yes',241776.9,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Yes',241776.9,'City of Cape Town'),
('level2','ZA_2_00191',2009,'level1','ZA_1_001','Yes',241776.9,'City of Cape Town'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Do not know',2464.279,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Do not know',2464.279,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Do not know',2464.279,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Do not know',2464.279,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','No',291030.2,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','No',291030.2,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','No',291030.2,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','No',291030.2,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Not applicable',4323399,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Not applicable',4323399,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Not applicable',4323399,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Not applicable',4323399,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Unspecified',2918.796,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Unspecified',2918.796,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Unspecified',2918.796,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Unspecified',2918.796,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Yes',329534.8,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Yes',329534.8,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Yes',329534.8,'City of Johannesburg'),
('level2','ZA_2_00798',2009,'level1','ZA_1_007','Yes',329534.8,'City of Johannesburg'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Do not know',635.4723,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Do not know',635.4723,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Do not know',635.4723,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Do not know',635.4723,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','No',141969.9,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','No',141969.9,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','No',141969.9,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','No',141969.9,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Not applicable',2944829,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Not applicable',2944829,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Not applicable',2944829,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Not applicable',2944829,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Unspecified',1469.841,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Unspecified',1469.841,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Unspecified',1469.841,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Unspecified',1469.841,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Yes',186247.3,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Yes',186247.3,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Yes',186247.3,'City of Tshwane'),
('level2','ZA_2_00799',2009,'level1','ZA_1_007','Yes',186247.3,'City of Tshwane'),
('level2','ZA_2_00640',2009,'level1','ZA_1_006','Do not know',242.2122,'Dr Kenneth Kaunda'),
('level2','ZA_2_00640',2009,'level1','ZA_1_006','No',72953.88,'Dr Kenneth Kaunda'),
('level2','ZA_2_00640',2009,'level1','ZA_1_006','Not applicable',586597.5,'Dr Kenneth Kaunda'),
('level2','ZA_2_00640',2009,'level1','ZA_1_006','Unspecified',257.2963,'Dr Kenneth Kaunda'),
('level2','ZA_2_00640',2009,'level1','ZA_1_006','Yes',82770.48,'Dr Kenneth Kaunda'),
('level2','ZA_2_00639',2009,'level1','ZA_1_006','Do not know',334.3246,'Dr Ruth Segomotsi Mompati'),
('level2','ZA_2_00639',2009,'level1','ZA_1_006','No',53768.05,'Dr Ruth Segomotsi Mompati'),
('level2','ZA_2_00639',2009,'level1','ZA_1_006','Not applicable',332081.5,'Dr Ruth Segomotsi Mompati'),
('level2','ZA_2_00639',2009,'level1','ZA_1_006','Unspecified',279.8389,'Dr Ruth Segomotsi Mompati'),
('level2','ZA_2_00639',2009,'level1','ZA_1_006','Yes',72893.72,'Dr Ruth Segomotsi Mompati'),
('level1','ZA_1_002',2009,'country','ZA','Do not know',12052.46,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','No',518608,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Not applicable',5676753,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Unspecified',1604.442,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Yes',787958.3,'Eastern Cape'),
('level2','ZA_2_00104',2009,'level1','ZA_1_001','Do not know',32.6671,'Garden Route'),
('level2','ZA_2_00104',2009,'level1','ZA_1_001','No',24258.87,'Garden Route'),
('level2','ZA_2_00104',2009,'level1','ZA_1_001','Not applicable',561586.2,'Garden Route'),
('level2','ZA_2_00104',2009,'level1','ZA_1_001','Unspecified',232.1118,'Garden Route'),
('level2','ZA_2_00104',2009,'level1','ZA_1_001','Yes',25167.86,'Garden Route'),
('level2','ZA_2_00832',2009,'level1','ZA_1_008','Do not know',1911.063,'Ehlanzeni'),
('level2','ZA_2_00832',2009,'level1','ZA_1_008','No',94393.04,'Ehlanzeni'),
('level2','ZA_2_00832',2009,'level1','ZA_1_008','Not applicable',1483392,'Ehlanzeni'),
('level2','ZA_2_00832',2009,'level1','ZA_1_008','Unspecified',448.8543,'Ehlanzeni'),
('level2','ZA_2_00832',2009,'level1','ZA_1_008','Yes',174785.9,'Ehlanzeni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Do not know',2126.397,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Do not know',2126.397,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Do not know',2126.397,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Do not know',2126.397,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','No',177200.8,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','No',177200.8,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','No',177200.8,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','No',177200.8,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Not applicable',3000875,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Not applicable',3000875,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Not applicable',3000875,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Not applicable',3000875,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Unspecified',1263.807,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Unspecified',1263.807,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Unspecified',1263.807,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Unspecified',1263.807,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Yes',197637.8,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Yes',197637.8,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Yes',197637.8,'Ekurhuleni'),
('level2','ZA_2_00797',2009,'level1','ZA_1_007','Yes',197637.8,'Ekurhuleni'),
('level2','ZA_2_00420',2009,'level1','ZA_1_004','Do not know',140.4167,'Fezile Dabi'),
('level2','ZA_2_00420',2009,'level1','ZA_1_004','No',44776.67,'Fezile Dabi'),
('level2','ZA_2_00420',2009,'level1','ZA_1_004','Not applicable',414952.2,'Fezile Dabi'),
('level2','ZA_2_00420',2009,'level1','ZA_1_004','Unspecified',41.25455,'Fezile Dabi'),
('level2','ZA_2_00420',2009,'level1','ZA_1_004','Yes',34866.27,'Fezile Dabi'),
('level2','ZA_2_00309',2009,'level1','ZA_1_003','Do not know',94.19705,'Frances Baard'),
('level2','ZA_2_00309',2009,'level1','ZA_1_003','No',26031.16,'Frances Baard'),
('level2','ZA_2_00309',2009,'level1','ZA_1_003','Not applicable',331896.2,'Frances Baard'),
('level2','ZA_2_00309',2009,'level1','ZA_1_003','Unspecified',191.8285,'Frances Baard'),
('level2','ZA_2_00309',2009,'level1','ZA_1_003','Yes',29527.89,'Frances Baard'),
('level1','ZA_1_004',2009,'country','ZA','Do not know',1506.225,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','No',217108.9,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Not applicable',2359772,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Unspecified',587.8105,'Free State'),
('level1','ZA_1_004',2009,'country','ZA','Yes',255739.1,'Free State'),
('level1','ZA_1_007',2009,'country','ZA','Do not know',7047.082,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','No',705147,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Not applicable',11839594,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Unspecified',6224.931,'Gauteng'),
('level1','ZA_1_007',2009,'country','ZA','Yes',841711.2,'Gauteng'),
('level2','ZA_2_00830',2009,'level1','ZA_1_008','Do not know',1615.365,'Gert Sibande'),
('level2','ZA_2_00830',2009,'level1','ZA_1_008','No',81803.73,'Gert Sibande'),
('level2','ZA_2_00830',2009,'level1','ZA_1_008','Not applicable',947593.5,'Gert Sibande'),
('level2','ZA_2_00830',2009,'level1','ZA_1_008','Unspecified',82.48165,'Gert Sibande'),
('level2','ZA_2_00830',2009,'level1','ZA_1_008','Yes',104314.3,'Gert Sibande'),
('level2','ZA_2_00214',2009,'level1','ZA_1_002','Do not know',220.3759,'Joe Gqabi'),
('level2','ZA_2_00214',2009,'level1','ZA_1_002','No',22408.4,'Joe Gqabi'),
('level2','ZA_2_00214',2009,'level1','ZA_1_002','Not applicable',319995,'Joe Gqabi'),
('level2','ZA_2_00214',2009,'level1','ZA_1_002','Unspecified',260.1153,'Joe Gqabi'),
('level2','ZA_2_00214',2009,'level1','ZA_1_002','Yes',30027.84,'Joe Gqabi'),
('level2','ZA_2_00345',2009,'level1','ZA_1_003','Do not know',330.1518,'John Taolo Gaetsewe'),
('level2','ZA_2_00345',2009,'level1','ZA_1_003','No',24938.35,'John Taolo Gaetsewe'),
('level2','ZA_2_00345',2009,'level1','ZA_1_003','Not applicable',176346.7,'John Taolo Gaetsewe'),
('level2','ZA_2_00345',2009,'level1','ZA_1_003','Unspecified',7.117623,'John Taolo Gaetsewe'),
('level2','ZA_2_00345',2009,'level1','ZA_1_003','Yes',40642.11,'John Taolo Gaetsewe'),
('level1','ZA_1_005',2009,'country','ZA','Do not know',8796.137,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','No',769752.1,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Not applicable',9143105,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Unspecified',2681.261,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Yes',1140906,'KwaZulu-Natal'),
('level2','ZA_2_00418',2009,'level1','ZA_1_004','Do not know',470.3447,'Lejweleputswa'),
('level2','ZA_2_00418',2009,'level1','ZA_1_004','No',56646.77,'Lejweleputswa'),
('level2','ZA_2_00418',2009,'level1','ZA_1_004','Not applicable',514231.5,'Lejweleputswa'),
('level2','ZA_2_00418',2009,'level1','ZA_1_004','Unspecified',55.10878,'Lejweleputswa'),
('level2','ZA_2_00418',2009,'level1','ZA_1_004','Yes',75516.15,'Lejweleputswa'),
('level1','ZA_1_009',2009,'country','ZA','Do not know',4370.42,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','No',287092.4,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Not applicable',4982005,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Unspecified',2064.844,'Limpopo'),
('level1','ZA_1_009',2009,'country','ZA','Yes',523557.1,'Limpopo'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Do not know',306.0916,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Do not know',306.0916,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Do not know',306.0916,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Do not know',306.0916,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','No',49550.76,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','No',49550.76,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','No',49550.76,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','No',49550.76,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Not applicable',675967.7,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Not applicable',675967.7,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Not applicable',675967.7,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Not applicable',675967.7,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Unspecified',280.0283,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Unspecified',280.0283,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Unspecified',280.0283,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Unspecified',280.0283,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Yes',61698.77,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Yes',61698.77,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Yes',61698.77,'Mangaung'),
('level2','ZA_2_00494',2009,'level1','ZA_1_004','Yes',61698.77,'Mangaung'),
('level2','ZA_2_00933',2009,'level1','ZA_1_009','Do not know',770.5534,'Mopani'),
('level2','ZA_2_00933',2009,'level1','ZA_1_009','No',61219.15,'Mopani'),
('level2','ZA_2_00933',2009,'level1','ZA_1_009','Not applicable',961014.9,'Mopani'),
('level2','ZA_2_00933',2009,'level1','ZA_1_009','Unspecified',643.7929,'Mopani'),
('level2','ZA_2_00933',2009,'level1','ZA_1_009','Yes',135537,'Mopani'),
('level1','ZA_1_008',2009,'country','ZA','Do not know',5103.095,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','No',271069.7,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Not applicable',3638161,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Unspecified',807.0716,'Mpumalanga'),
('level1','ZA_1_008',2009,'country','ZA','Yes',420823.3,'Mpumalanga'),
('level2','ZA_2_00306',2009,'level1','ZA_1_003','Do not know',68.19923,'Namakwa'),
('level2','ZA_2_00306',2009,'level1','ZA_1_003','No',8247.943,'Namakwa'),
('level2','ZA_2_00306',2009,'level1','ZA_1_003','Not applicable',100312.6,'Namakwa'),
('level2','ZA_2_00306',2009,'level1','ZA_1_003','Unspecified',0,'Namakwa'),
('level2','ZA_2_00306',2009,'level1','ZA_1_003','Yes',6858.838,'Namakwa'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Do not know',2636.008,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Do not know',2636.008,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Do not know',2636.008,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Do not know',2636.008,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','No',102602.1,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','No',102602.1,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','No',102602.1,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','No',102602.1,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Not applicable',1021973,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Not applicable',1021973,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Not applicable',1021973,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Not applicable',1021973,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Unspecified',312.1833,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Unspecified',312.1833,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Unspecified',312.1833,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Unspecified',312.1833,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Yes',135527.2,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Yes',135527.2,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Yes',135527.2,'Nelson Mandela Bay'),
('level2','ZA_2_00293',2009,'level1','ZA_1_002','Yes',135527.2,'Nelson Mandela Bay'),
('level2','ZA_2_00638',2009,'level1','ZA_1_006','Do not know',362.0533,'Ngaka Modiri Molema'),
('level2','ZA_2_00638',2009,'level1','ZA_1_006','No',76675.68,'Ngaka Modiri Molema'),
('level2','ZA_2_00638',2009,'level1','ZA_1_006','Not applicable',687017.2,'Ngaka Modiri Molema'),
('level2','ZA_2_00638',2009,'level1','ZA_1_006','Unspecified',177.8568,'Ngaka Modiri Molema'),
('level2','ZA_2_00638',2009,'level1','ZA_1_006','Yes',124875.6,'Ngaka Modiri Molema'),
('level2','ZA_2_00831',2009,'level1','ZA_1_008','Do not know',1576.666,'Nkangala'),
('level2','ZA_2_00831',2009,'level1','ZA_1_008','No',94872.89,'Nkangala'),
('level2','ZA_2_00831',2009,'level1','ZA_1_008','Not applicable',1207175,'Nkangala'),
('level2','ZA_2_00831',2009,'level1','ZA_1_008','Unspecified',275.7356,'Nkangala'),
('level2','ZA_2_00831',2009,'level1','ZA_1_008','Yes',141723.1,'Nkangala'),
('level1','ZA_1_006',2009,'country','ZA','Do not know',2540.034,'North West'),
('level1','ZA_1_006',2009,'country','ZA','No',303141.2,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Not applicable',3011083,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Unspecified',1192.895,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Yes',430478,'North West'),
('level1','ZA_1_003',2009,'country','ZA','Do not know',1060.574,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','No',95954.13,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Not applicable',963676.2,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Unspecified',365.543,'Northern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Yes',132723.9,'Northern Cape'),
('level2','ZA_2_00215',2009,'level1','ZA_1_002','Do not know',2043.958,'O.R.Tambo'),
('level2','ZA_2_00215',2009,'level1','ZA_1_002','No',102667.2,'O.R.Tambo'),
('level2','ZA_2_00215',2009,'level1','ZA_1_002','Not applicable',1166789,'O.R.Tambo'),
('level2','ZA_2_00215',2009,'level1','ZA_1_002','Unspecified',372.2453,'O.R.Tambo'),
('level2','ZA_2_00215',2009,'level1','ZA_1_002','Yes',185512.1,'O.R.Tambo'),
('level2','ZA_2_00103',2009,'level1','ZA_1_001','Do not know',89.06807,'Overberg'),
('level2','ZA_2_00103',2009,'level1','ZA_1_001','No',9941.918,'Overberg'),
('level2','ZA_2_00103',2009,'level1','ZA_1_001','Not applicable',259896.7,'Overberg'),
('level2','ZA_2_00103',2009,'level1','ZA_1_001','Unspecified',175.3474,'Overberg'),
('level2','ZA_2_00103',2009,'level1','ZA_1_001','Yes',16683.26,'Overberg'),
('level2','ZA_2_00307',2009,'level1','ZA_1_003','Do not know',248.0816,'Pixley ka Seme'),
('level2','ZA_2_00307',2009,'level1','ZA_1_003','No',15033.65,'Pixley ka Seme'),
('level2','ZA_2_00307',2009,'level1','ZA_1_003','Not applicable',158650,'Pixley ka Seme'),
('level2','ZA_2_00307',2009,'level1','ZA_1_003','Unspecified',117.0298,'Pixley ka Seme'),
('level2','ZA_2_00307',2009,'level1','ZA_1_003','Yes',21546.3,'Pixley ka Seme'),
('level2','ZA_2_00742',2009,'level1','ZA_1_007','Do not know',1061.589,'Sedibeng'),
('level2','ZA_2_00742',2009,'level1','ZA_1_007','No',46535.4,'Sedibeng'),
('level2','ZA_2_00742',2009,'level1','ZA_1_007','Not applicable',838462.2,'Sedibeng'),
('level2','ZA_2_00742',2009,'level1','ZA_1_007','Unspecified',399.2545,'Sedibeng'),
('level2','ZA_2_00742',2009,'level1','ZA_1_007','Yes',71069.94,'Sedibeng'),
('level2','ZA_2_00947',2009,'level1','ZA_1_009','Do not know',1628.771,'Sekhukhune'),
('level2','ZA_2_00947',2009,'level1','ZA_1_009','No',72130.52,'Sekhukhune'),
('level2','ZA_2_00947',2009,'level1','ZA_1_009','Not applicable',963671.3,'Sekhukhune'),
('level2','ZA_2_00947',2009,'level1','ZA_1_009','Unspecified',777.1539,'Sekhukhune'),
('level2','ZA_2_00947',2009,'level1','ZA_1_009','Yes',131554.1,'Sekhukhune'),
('level2','ZA_2_00543',2009,'level1','ZA_1_005','Do not know',149.7019,'Harry Gwala'),
('level2','ZA_2_00543',2009,'level1','ZA_1_005','No',31732.58,'Harry Gwala'),
('level2','ZA_2_00543',2009,'level1','ZA_1_005','Not applicable',421628.2,'Harry Gwala'),
('level2','ZA_2_00543',2009,'level1','ZA_1_005','Unspecified',0,'Harry Gwala'),
('level2','ZA_2_00543',2009,'level1','ZA_1_005','Yes',57354.61,'Harry Gwala'),
('country','ZA',2009,'continent','AFR','Do not know',44314.71,'South Africa'),
('country','ZA',2009,'continent','AFR','No',3439425,'South Africa'),
('country','ZA',2009,'continent','AFR','Not applicable',47274866,'South Africa'),
('country','ZA',2009,'continent','AFR','Unspecified',17088.02,'South Africa'),
('country','ZA',2009,'continent','AFR','Yes',4877960,'South Africa'),
('level2','ZA_2_00419',2009,'level1','ZA_1_004','Do not know',468.9374,'Thabo Mofutsanyane'),
('level2','ZA_2_00419',2009,'level1','ZA_1_004','No',57499.92,'Thabo Mofutsanyane'),
('level2','ZA_2_00419',2009,'level1','ZA_1_004','Not applicable',645686.9,'Thabo Mofutsanyane'),
('level2','ZA_2_00419',2009,'level1','ZA_1_004','Unspecified',56.38295,'Thabo Mofutsanyane'),
('level2','ZA_2_00419',2009,'level1','ZA_1_004','Yes',75617.84,'Thabo Mofutsanyane'),
('level2','ZA_2_00521',2009,'level1','ZA_1_005','Do not know',689.4691,'Ugu'),
('level2','ZA_2_00521',2009,'level1','ZA_1_005','No',51218.32,'Ugu'),
('level2','ZA_2_00521',2009,'level1','ZA_1_005','Not applicable',632852.8,'Ugu'),
('level2','ZA_2_00521',2009,'level1','ZA_1_005','Unspecified',0,'Ugu'),
('level2','ZA_2_00521',2009,'level1','ZA_1_005','Yes',68575.43,'Ugu'),
('level2','ZA_2_00522',2009,'level1','ZA_1_005','Do not know',713.9382,'Umgungundlovu'),
('level2','ZA_2_00522',2009,'level1','ZA_1_005','No',55996.29,'Umgungundlovu'),
('level2','ZA_2_00522',2009,'level1','ZA_1_005','Not applicable',947029,'Umgungundlovu'),
('level2','ZA_2_00522',2009,'level1','ZA_1_005','Unspecified',531.539,'Umgungundlovu'),
('level2','ZA_2_00522',2009,'level1','ZA_1_005','Yes',91593.82,'Umgungundlovu'),
('level2','ZA_2_00527',2009,'level1','ZA_1_005','Do not know',1482.981,'Umkhanyakude'),
('level2','ZA_2_00527',2009,'level1','ZA_1_005','No',74061.14,'Umkhanyakude'),
('level2','ZA_2_00527',2009,'level1','ZA_1_005','Not applicable',496378,'Umkhanyakude'),
('level2','ZA_2_00527',2009,'level1','ZA_1_005','Unspecified',469.8457,'Umkhanyakude'),
('level2','ZA_2_00527',2009,'level1','ZA_1_005','Yes',116698.3,'Umkhanyakude'),
('level2','ZA_2_00524',2009,'level1','ZA_1_005','Do not know',149.5015,'Umzinyathi'),
('level2','ZA_2_00524',2009,'level1','ZA_1_005','No',50170.97,'Umzinyathi'),
('level2','ZA_2_00524',2009,'level1','ZA_1_005','Not applicable',425340.3,'Umzinyathi'),
('level2','ZA_2_00524',2009,'level1','ZA_1_005','Unspecified',298.7629,'Umzinyathi'),
('level2','ZA_2_00524',2009,'level1','ZA_1_005','Yes',78922.34,'Umzinyathi'),
('level2','ZA_2_00523',2009,'level1','ZA_1_005','Do not know',334.9319,'Uthukela'),
('level2','ZA_2_00523',2009,'level1','ZA_1_005','No',75470.98,'Uthukela'),
('level2','ZA_2_00523',2009,'level1','ZA_1_005','Not applicable',521839.7,'Uthukela'),
('level2','ZA_2_00523',2009,'level1','ZA_1_005','Unspecified',70.80318,'Uthukela'),
('level2','ZA_2_00523',2009,'level1','ZA_1_005','Yes',108871.6,'Uthukela'),
('level2','ZA_2_00528',2009,'level1','ZA_1_005','Do not know',13.13911,'King Cetshwayo'),
('level2','ZA_2_00528',2009,'level1','ZA_1_005','No',96974.68,'King Cetshwayo'),
('level2','ZA_2_00528',2009,'level1','ZA_1_005','Not applicable',742249.4,'King Cetshwayo'),
('level2','ZA_2_00528',2009,'level1','ZA_1_005','Unspecified',48.3364,'King Cetshwayo'),
('level2','ZA_2_00528',2009,'level1','ZA_1_005','Yes',131849.1,'King Cetshwayo'),
('level2','ZA_2_00934',2009,'level1','ZA_1_009','Do not know',1362.735,'Vhembe'),
('level2','ZA_2_00934',2009,'level1','ZA_1_009','No',76991.51,'Vhembe'),
('level2','ZA_2_00934',2009,'level1','ZA_1_009','Not applicable',1207276,'Vhembe'),
('level2','ZA_2_00934',2009,'level1','ZA_1_009','Unspecified',453.9109,'Vhembe'),
('level2','ZA_2_00934',2009,'level1','ZA_1_009','Yes',107865.1,'Vhembe'),
('level2','ZA_2_00936',2009,'level1','ZA_1_009','Do not know',335.7054,'Waterberg'),
('level2','ZA_2_00936',2009,'level1','ZA_1_009','No',36390.12,'Waterberg'),
('level2','ZA_2_00936',2009,'level1','ZA_1_009','Not applicable',644816.9,'Waterberg'),
('level2','ZA_2_00936',2009,'level1','ZA_1_009','Unspecified',135.7458,'Waterberg'),
('level2','ZA_2_00936',2009,'level1','ZA_1_009','Yes',64079.23,'Waterberg'),
('level2','ZA_2_00101',2009,'level1','ZA_1_001','Do not know',20.14086,'West Coast'),
('level2','ZA_2_00101',2009,'level1','ZA_1_001','No',19725.46,'West Coast'),
('level2','ZA_2_00101',2009,'level1','ZA_1_001','Not applicable',396451,'West Coast'),
('level2','ZA_2_00101',2009,'level1','ZA_1_001','Unspecified',63.20806,'West Coast'),
('level2','ZA_2_00101',2009,'level1','ZA_1_001','Yes',20143.16,'West Coast'),
('level2','ZA_2_00748',2009,'level1','ZA_1_007','Do not know',759.3442,'West Rand'),
('level2','ZA_2_00748',2009,'level1','ZA_1_007','No',48410.8,'West Rand'),
('level2','ZA_2_00748',2009,'level1','ZA_1_007','Not applicable',732028.9,'West Rand'),
('level2','ZA_2_00748',2009,'level1','ZA_1_007','Unspecified',173.2321,'West Rand'),
('level2','ZA_2_00748',2009,'level1','ZA_1_007','Yes',57221.38,'West Rand'),
('level1','ZA_1_001',2009,'country','ZA','Do not know',1838.68,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','No',271551.9,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Not applicable',5660718,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Unspecified',1559.226,'Western Cape'),
('level1','ZA_1_001',2009,'country','ZA','Yes',344062.9,'Western Cape'),
('level2','ZA_2_00416',2009,'level1','ZA_1_004','Do not know',120.4342,'Xhariep'),
('level2','ZA_2_00416',2009,'level1','ZA_1_004','No',8634.782,'Xhariep'),
('level2','ZA_2_00416',2009,'level1','ZA_1_004','Not applicable',108933.6,'Xhariep'),
('level2','ZA_2_00416',2009,'level1','ZA_1_004','Unspecified',155.0359,'Xhariep'),
('level2','ZA_2_00416',2009,'level1','ZA_1_004','Yes',8040.08,'Xhariep'),
('level2','ZA_2_00308',2009,'level1','ZA_1_003','Do not know',319.9443,'Z F Mgcawu'),
('level2','ZA_2_00308',2009,'level1','ZA_1_003','No',21703.04,'Z F Mgcawu'),
('level2','ZA_2_00308',2009,'level1','ZA_1_003','Not applicable',196470.7,'Z F Mgcawu'),
('level2','ZA_2_00308',2009,'level1','ZA_1_003','Unspecified',49.56702,'Z F Mgcawu'),
('level2','ZA_2_00308',2009,'level1','ZA_1_003','Yes',34148.77,'Z F Mgcawu'),
('level2','ZA_2_00526',2009,'level1','ZA_1_005','Do not know',2793.242,'Zululand'),
('level2','ZA_2_00526',2009,'level1','ZA_1_005','No',80648.36,'Zululand'),
('level2','ZA_2_00526',2009,'level1','ZA_1_005','Not applicable',671834.5,'Zululand'),
('level2','ZA_2_00526',2009,'level1','ZA_1_005','Unspecified',29.59321,'Zululand'),
('level2','ZA_2_00526',2009,'level1','ZA_1_005','Yes',137004.1,'Zululand'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Do not know',1706.206,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Do not know',1706.206,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Do not know',1706.206,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Do not know',1706.206,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','No',159755,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','No',159755,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','No',159755,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','No',159755,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Not applicable',3318001,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Not applicable',3318001,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Not applicable',3318001,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Not applicable',3318001,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Unspecified',1206.323,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Unspecified',1206.323,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Unspecified',1206.323,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Unspecified',1206.323,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Yes',221562.2,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Yes',221562.2,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Yes',221562.2,'eThekwini'),
('level2','ZA_2_00595',2009,'level1','ZA_1_005','Yes',221562.2,'eThekwini'),
('level2','ZA_2_00529',2009,'level1','ZA_1_005','Do not know',339.3518,'iLembe'),
('level2','ZA_2_00529',2009,'level1','ZA_1_005','No',41840.08,'iLembe'),
('level2','ZA_2_00529',2009,'level1','ZA_1_005','Not applicable',547293.4,'iLembe'),
('level2','ZA_2_00529',2009,'level1','ZA_1_005','Unspecified',26.05741,'iLembe'),
('level2','ZA_2_00529',2009,'level1','ZA_1_005','Yes',68113.43,'iLembe') ON CONFLICT DO NOTHING;
