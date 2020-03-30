SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.employed_individual_annual_income DROP CONSTRAINT IF EXISTS pk_employed_individual_annual_income;
DROP TABLE IF EXISTS public.employed_individual_annual_income;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.employed_individual_annual_income (
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

INSERT INTO public.employed_individual_annual_income VALUES
('level1','ZA_1_003',2009,'country','ZA','All','No income',280167,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Female','No income',102855,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Male','No income',177312,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','All','R 1 - R 4800',103367,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Female','R 1 - R 4800',63461,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Male','R 1 - R 4800',39906,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','All','R 1228801 - R 2457600',4028,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Female','R 1228801 - R 2457600',1220,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Male','R 1228801 - R 2457600',2808,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','All','R 153601 - R 307200',88736,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Female','R 153601 - R 307200',32932,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Male','R 153601 - R 307200',55804,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','All','R 19201 - R 38400',354030,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Female','R 19201 - R 38400',182937,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Male','R 19201 - R 38400',171093,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','All','R 307201 - R 614400',47488,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Female','R 307201 - R 614400',11656,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Male','R 307201 - R 614400',35832,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','All','R 38401 - R 76800',170144,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Female','R 38401 - R 76800',73536,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Male','R 38401 - R 76800',96608,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','All','R 4801 - R 9600',173285,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Female','R 4801 - R 9600',110199,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Male','R 4801 - R 9600',63086,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','All','R 614401- R 1228800',12560,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Female','R 614401- R 1228800',2337,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Male','R 614401- R 1228800',10223,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','All','R 76801 - R 153600',117986,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Female','R 76801 - R 153600',51644,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Male','R 76801 - R 153600',66342,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','All','R 9601 - R 19200',399372,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Female','R 9601 - R 19200',238667,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Male','R 9601 - R 19200',160705,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','All','R2457601 or more',3164,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Female','R2457601 or more',981,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Male','R2457601 or more',2183,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','All','total',1754367,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','All','Unspecified',35,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Female','Unspecified',40,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Male','Unspecified',5,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','All','No income',102902,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Female','No income',37120,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Male','No income',65782,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','All','R 1 - R 4800',46790,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Female','R 1 - R 4800',25910,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Male','R 1 - R 4800',20880,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','All','R 1228801 - R 2457600',2273,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Female','R 1228801 - R 2457600',560,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Male','R 1228801 - R 2457600',1713,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','All','R 153601 - R 307200',50013,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Female','R 153601 - R 307200',13858,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Male','R 153601 - R 307200',36155,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','All','R 19201 - R 38400',178190,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Female','R 19201 - R 38400',75532,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Male','R 19201 - R 38400',102658,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','All','R 307201 - R 614400',26689,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Female','R 307201 - R 614400',4861,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Male','R 307201 - R 614400',21828,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','All','R 38401 - R 76800',108852,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Female','R 38401 - R 76800',38316,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Male','R 38401 - R 76800',70536,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','All','R 4801 - R 9600',71364,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Female','R 4801 - R 9600',40232,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Male','R 4801 - R 9600',31132,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','All','R 614401- R 1228800',7463,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Female','R 614401- R 1228800',1033,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Male','R 614401- R 1228800',6430,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','All','R 76801 - R 153600',70171,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Female','R 76801 - R 153600',23516,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Male','R 76801 - R 153600',46655,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','All','R 9601 - R 19200',172334,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Female','R 9601 - R 19200',87878,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Male','R 9601 - R 19200',84456,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','All','R2457601 or more',1812,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Female','R2457601 or more',371,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Male','R2457601 or more',1441,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','All','total',838878,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','All','Unspecified',21,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Female','Unspecified',25,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Male','Unspecified',4,'Free State'),
('level1','ZA_1_009',2009,'country','ZA','All','No income',714900,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Female','No income',243325,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Male','No income',471575,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','All','R 1 - R 4800',141010,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Female','R 1 - R 4800',66373,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Male','R 1 - R 4800',74637,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','All','R 1228801 - R 2457600',43994,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Female','R 1228801 - R 2457600',7802,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Male','R 1228801 - R 2457600',36192,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','All','R 153601 - R 307200',377109,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Female','R 153601 - R 307200',122447,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Male','R 153601 - R 307200',254662,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','All','R 19201 - R 38400',698243,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Female','R 19201 - R 38400',246479,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Male','R 19201 - R 38400',451764,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','All','R 307201 - R 614400',290622,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Female','R 307201 - R 614400',70740,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Male','R 307201 - R 614400',219882,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','All','R 38401 - R 76800',604261,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Female','R 38401 - R 76800',176929,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Male','R 38401 - R 76800',427332,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','All','R 4801 - R 9600',201830,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Female','R 4801 - R 9600',89427,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Male','R 4801 - R 9600',112403,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','All','R 614401- R 1228800',143492,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Female','R 614401- R 1228800',25979,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Male','R 614401- R 1228800',117513,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','All','R 76801 - R 153600',445715,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Female','R 76801 - R 153600',146539,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Male','R 76801 - R 153600',299176,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','All','R 9601 - R 19200',478700,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Female','R 9601 - R 19200',220719,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Male','R 9601 - R 19200',257981,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','All','R2457601 or more',22248,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Female','R2457601 or more',4804,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Male','R2457601 or more',17444,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','All','total',4162488,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','All','Unspecified',296,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Female','Unspecified',364,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Male','Unspecified',68,'Gauteng'),
('level1','ZA_1_001',2009,'country','ZA','All','No income',410484,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Female','No income',156484,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Male','No income',254000,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','All','R 1 - R 4800',131229,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Female','R 1 - R 4800',78637,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Male','R 1 - R 4800',52592,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','All','R 1228801 - R 2457600',9400,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Female','R 1228801 - R 2457600',2367,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Male','R 1228801 - R 2457600',7033,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','All','R 153601 - R 307200',161976,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Female','R 153601 - R 307200',54265,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Male','R 153601 - R 307200',107711,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','All','R 19201 - R 38400',517141,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Female','R 19201 - R 38400',253026,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Male','R 19201 - R 38400',264115,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','All','R 307201 - R 614400',100013,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Female','R 307201 - R 614400',24689,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Male','R 307201 - R 614400',75324,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','All','R 38401 - R 76800',310029,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Female','R 38401 - R 76800',125232,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Male','R 38401 - R 76800',184797,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','All','R 4801 - R 9600',225014,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Female','R 4801 - R 9600',137824,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Male','R 4801 - R 9600',87190,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','All','R 614401- R 1228800',31254,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Female','R 614401- R 1228800',5477,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Male','R 614401- R 1228800',25777,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','All','R 76801 - R 153600',216654,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Female','R 76801 - R 153600',84630,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Male','R 76801 - R 153600',132024,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','All','R 9601 - R 19200',514686,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Female','R 9601 - R 19200',299267,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Male','R 9601 - R 19200',215419,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','All','R2457601 or more',6133,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Female','R2457601 or more',1704,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Male','R2457601 or more',4429,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','All','total',2634123,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','All','Unspecified',86,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Female','Unspecified',110,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Male','Unspecified',24,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','All','No income',200924,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Female','No income',81664,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Male','No income',119260,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','All','R 1 - R 4800',92948,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Female','R 1 - R 4800',58038,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Male','R 1 - R 4800',34910,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','All','R 1228801 - R 2457600',2599,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Female','R 1228801 - R 2457600',758,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Male','R 1228801 - R 2457600',1841,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','All','R 153601 - R 307200',64813,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Female','R 153601 - R 307200',21461,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Male','R 153601 - R 307200',43352,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','All','R 19201 - R 38400',302661,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Female','R 19201 - R 38400',150797,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Male','R 19201 - R 38400',151864,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','All','R 307201 - R 614400',32129,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Female','R 307201 - R 614400',6742,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Male','R 307201 - R 614400',25387,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','All','R 38401 - R 76800',141117,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Female','R 38401 - R 76800',52895,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Male','R 38401 - R 76800',88222,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','All','R 4801 - R 9600',173722,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Female','R 4801 - R 9600',113775,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Male','R 4801 - R 9600',59947,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','All','R 614401- R 1228800',8046,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Female','R 614401- R 1228800',1276,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Male','R 614401- R 1228800',6770,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','All','R 76801 - R 153600',90768,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Female','R 76801 - R 153600',33042,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Male','R 76801 - R 153600',57726,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','All','R 9601 - R 19200',335730,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Female','R 9601 - R 19200',204027,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Male','R 9601 - R 19200',131703,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','All','R2457601 or more',2176,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Female','R2457601 or more',620,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Male','R2457601 or more',1556,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','All','total',1447657,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','All','Unspecified',17,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Female','Unspecified',24,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Male','Unspecified',7,'Limpopo'),
('level1','ZA_1_004',2009,'country','ZA','All','No income',104360,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Female','No income',160767,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Male','No income',56407,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','All','R 1 - R 4800',24784,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Female','R 1 - R 4800',57423,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Male','R 1 - R 4800',32639,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','All','R 1228801 - R 2457600',2492,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Female','R 1228801 - R 2457600',3110,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Male','R 1228801 - R 2457600',618,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','All','R 153601 - R 307200',50253,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Female','R 153601 - R 307200',67511,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Male','R 153601 - R 307200',17258,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','All','R 19201 - R 38400',129685,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Female','R 19201 - R 38400',218908,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Male','R 19201 - R 38400',89223,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','All','R 307201 - R 614400',30766,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Female','R 307201 - R 614400',37351,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Male','R 307201 - R 614400',6585,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','All','R 38401 - R 76800',100619,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Female','R 38401 - R 76800',146450,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Male','R 38401 - R 76800',45831,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','All','R 4801 - R 9600',39820,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Female','R 4801 - R 9600',95683,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Male','R 4801 - R 9600',55863,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','All','R 614401- R 1228800',9795,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Female','R 614401- R 1228800',11226,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Male','R 614401- R 1228800',1431,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','All','R 76801 - R 153600',68654,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Female','R 76801 - R 153600',97413,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Male','R 76801 - R 153600',28759,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','All','R 9601 - R 19200',99230,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Female','R 9601 - R 19200',204079,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Male','R 9601 - R 19200',104849,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','All','R2457601 or more',1768,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Female','R2457601 or more',2254,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Male','R2457601 or more',486,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Female','total',1102203,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','All','Unspecified',6,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Female','Unspecified',22,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Male','Unspecified',28,'Mpumalanga'),
('level1','ZA_1_007',2009,'country','ZA','All','No income',185469,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Female','No income',61021,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Male','No income',124448,'North West'),
('level1','ZA_1_007',2009,'country','ZA','All','R 1 - R 4800',46346,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Female','R 1 - R 4800',25412,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Male','R 1 - R 4800',20934,'North West'),
('level1','ZA_1_007',2009,'country','ZA','All','R 1228801 - R 2457600',2705,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Female','R 1228801 - R 2457600',630,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Male','R 1228801 - R 2457600',2075,'North West'),
('level1','ZA_1_007',2009,'country','ZA','All','R 153601 - R 307200',57781,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Female','R 153601 - R 307200',15214,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Male','R 153601 - R 307200',42567,'North West'),
('level1','ZA_1_007',2009,'country','ZA','All','R 19201 - R 38400',217163,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Female','R 19201 - R 38400',79222,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Male','R 19201 - R 38400',137941,'North West'),
('level1','ZA_1_007',2009,'country','ZA','All','R 307201 - R 614400',28452,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Female','R 307201 - R 614400',5140,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Male','R 307201 - R 614400',23312,'North West'),
('level1','ZA_1_007',2009,'country','ZA','All','R 38401 - R 76800',168652,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Female','R 38401 - R 76800',44840,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Male','R 38401 - R 76800',123812,'North West'),
('level1','ZA_1_007',2009,'country','ZA','All','R 4801 - R 9600',78449,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Female','R 4801 - R 9600',41763,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Male','R 4801 - R 9600',36686,'North West'),
('level1','ZA_1_007',2009,'country','ZA','All','R 614401- R 1228800',8392,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Female','R 614401- R 1228800',1159,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Male','R 614401- R 1228800',7233,'North West'),
('level1','ZA_1_007',2009,'country','ZA','All','R 76801 - R 153600',95990,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Female','R 76801 - R 153600',27110,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Male','R 76801 - R 153600',68880,'North West'),
('level1','ZA_1_007',2009,'country','ZA','All','R 9601 - R 19200',206130,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Female','R 9601 - R 19200',97186,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Male','R 9601 - R 19200',108944,'North West'),
('level1','ZA_1_007',2009,'country','ZA','All','R2457601 or more',2062,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Female','R2457601 or more',421,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Male','R2457601 or more',1641,'North West'),
('level1','ZA_1_007',2009,'country','ZA','All','total',1097609,'North West'),
('level1','ZA_1_007',2009,'country','ZA','All','Unspecified',15,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Female','Unspecified',18,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Male','Unspecified',3,'North West'),
('level1','ZA_1_006',2009,'country','ZA','All','No income',25090,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Female','No income',37395,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Male','No income',12305,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','All','R 1 - R 4800',5069,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Female','R 1 - R 4800',11512,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Male','R 1 - R 4800',6443,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','All','R 1228801 - R 2457600',724,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Female','R 1228801 - R 2457600',943,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Male','R 1228801 - R 2457600',219,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','All','R 153601 - R 307200',16483,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Female','R 153601 - R 307200',22300,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Male','R 153601 - R 307200',5817,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','All','R 19201 - R 38400',39800,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Female','R 19201 - R 38400',66880,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Male','R 19201 - R 38400',27080,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','All','R 307201 - R 614400',9406,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Female','R 307201 - R 614400',11269,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Male','R 307201 - R 614400',1863,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','All','R 38401 - R 76800',29469,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Female','R 38401 - R 76800',46057,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Male','R 38401 - R 76800',16588,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','All','R 4801 - R 9600',8939,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Female','R 4801 - R 9600',19697,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Male','R 4801 - R 9600',10758,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','All','R 614401- R 1228800',2647,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Female','R 614401- R 1228800',3047,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Male','R 614401- R 1228800',400,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','All','R 76801 - R 153600',21613,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Female','R 76801 - R 153600',31908,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Male','R 76801 - R 153600',10295,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','All','R 9601 - R 19200',32865,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Female','R 9601 - R 19200',61630,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Male','R 9601 - R 19200',28765,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','All','R2457601 or more',598,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Female','R2457601 or more',754,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Male','R2457601 or more',156,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Female','total',313399,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','All','Unspecified',2,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Female','Unspecified',5,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Male','Unspecified',7,'Northern Cape'),
('country','ZA',2009,'continent','AFR','All','No income',835753,'South Africa'),
('country','ZA',2009,'continent','AFR','Female','No income',1490848,'South Africa'),
('country','ZA',2009,'continent','AFR','Male','No income',2326601,'South Africa'),
('country','ZA',2009,'continent','AFR','All','R 1 - R 4800',380649,'South Africa'),
('country','ZA',2009,'continent','AFR','Female','R 1 - R 4800',294659,'South Africa'),
('country','ZA',2009,'continent','AFR','Male','R 1 - R 4800',675308,'South Africa'),
('country','ZA',2009,'continent','AFR','All','R 1228801 - R 2457600',16500,'South Africa'),
('country','ZA',2009,'continent','AFR','Female','R 1228801 - R 2457600',64948,'South Africa'),
('country','ZA',2009,'continent','AFR','Male','R 1228801 - R 2457600',81448,'South Africa'),
('country','ZA',2009,'continent','AFR','All','R 153601 - R 307200',336532,'South Africa'),
('country','ZA',2009,'continent','AFR','Female','R 153601 - R 307200',733886,'South Africa'),
('country','ZA',2009,'continent','AFR','Male','R 153601 - R 307200',1070418,'South Africa'),
('country','ZA',2009,'continent','AFR','All','R 19201 - R 38400',1218628,'South Africa'),
('country','ZA',2009,'continent','AFR','Female','R 19201 - R 38400',1636622,'South Africa'),
('country','ZA',2009,'continent','AFR','Male','R 19201 - R 38400',2855250,'South Africa'),
('country','ZA',2009,'continent','AFR','All','R 307201 - R 614400',158203,'South Africa'),
('country','ZA',2009,'continent','AFR','Female','R 307201 - R 614400',539061,'South Africa'),
('country','ZA',2009,'continent','AFR','Male','R 307201 - R 614400',697264,'South Africa'),
('country','ZA',2009,'continent','AFR','All','R 38401 - R 76800',672680,'South Africa'),
('country','ZA',2009,'continent','AFR','Female','R 38401 - R 76800',1288055,'South Africa'),
('country','ZA',2009,'continent','AFR','Male','R 38401 - R 76800',1960735,'South Africa'),
('country','ZA',2009,'continent','AFR','All','R 4801 - R 9600',632136,'South Africa'),
('country','ZA',2009,'continent','AFR','Female','R 4801 - R 9600',474235,'South Africa'),
('country','ZA',2009,'continent','AFR','Male','R 4801 - R 9600',1106371,'South Africa'),
('country','ZA',2009,'continent','AFR','All','R 614401- R 1228800',46812,'South Africa'),
('country','ZA',2009,'continent','AFR','Female','R 614401- R 1228800',225707,'South Africa'),
('country','ZA',2009,'continent','AFR','Male','R 614401- R 1228800',272519,'South Africa'),
('country','ZA',2009,'continent','AFR','All','R 76801 - R 153600',482013,'South Africa'),
('country','ZA',2009,'continent','AFR','Female','R 76801 - R 153600',898975,'South Africa'),
('country','ZA',2009,'continent','AFR','Male','R 76801 - R 153600',1380988,'South Africa'),
('country','ZA',2009,'continent','AFR','All','R 9601 - R 19200',1378704,'South Africa'),
('country','ZA',2009,'continent','AFR','Female','R 9601 - R 19200',1200409,'South Africa'),
('country','ZA',2009,'continent','AFR','Male','R 9601 - R 19200',2579113,'South Africa'),
('country','ZA',2009,'continent','AFR','All','R2457601 or more',10932,'South Africa'),
('country','ZA',2009,'continent','AFR','Female','R2457601 or more',36605,'South Africa'),
('country','ZA',2009,'continent','AFR','Male','R2457601 or more',47537,'South Africa'),
('country','ZA',2009,'continent','AFR','Male','total',15054259,'South Africa'),
('country','ZA',2009,'continent','AFR','All','Unspecified',707,'South Africa'),
('country','ZA',2009,'continent','AFR','Female','Unspecified',132,'South Africa'),
('country','ZA',2009,'continent','AFR','Male','Unspecified',575,'South Africa'),
('level1','ZA_1_008',2009,'country','ZA','All','No income',84571,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Female','No income',149021,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Male','No income',233592,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','All','R 1 - R 4800',23736,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Female','R 1 - R 4800',20946,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Male','R 1 - R 4800',44682,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','All','R 1228801 - R 2457600',2327,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Female','R 1228801 - R 2457600',10069,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Male','R 1228801 - R 2457600',12396,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','All','R 153601 - R 307200',53279,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Female','R 153601 - R 307200',126899,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Male','R 153601 - R 307200',180178,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','All','R 19201 - R 38400',114333,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Female','R 19201 - R 38400',187702,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Male','R 19201 - R 38400',302035,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','All','R 307201 - R 614400',25928,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Female','R 307201 - R 614400',97323,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Male','R 307201 - R 614400',123251,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','All','R 38401 - R 76800',98514,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Female','R 38401 - R 76800',166661,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Male','R 38401 - R 76800',265175,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','All','R 4801 - R 9600',32295,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Female','R 4801 - R 9600',35031,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Male','R 4801 - R 9600',67326,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','All','R 614401- R 1228800',7720,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Female','R 614401- R 1228800',39319,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Male','R 614401- R 1228800',47039,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','All','R 76801 - R 153600',76479,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Female','R 76801 - R 153600',137903,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Male','R 76801 - R 153600',214382,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','All','R 9601 - R 19200',97344,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Female','R 9601 - R 19200',109105,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Male','R 9601 - R 19200',206449,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','All','R2457601 or more',1389,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Female','R2457601 or more',5544,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Male','R2457601 or more',6933,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Male','total',1703528,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','All','Unspecified',90,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Female','Unspecified',11,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Male','Unspecified',79,'Western Cape');
      
INSERT into public.sources(geo_level, country_code, pg_table_name, table_name, source_title, source_link) VALUES('level1','ZA','employed_individual_annual_income','allEmployedIndividualAnnualIncomes','"Community Survey, 2016"','https://open.africa/dataset/community-survey-south-africa-2016/resource/ce9148f0-1157-4919-9708-19af4574de3f') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, pg_table_name, table_name, source_title, source_link) VALUES('country','ZA','employed_individual_annual_income','allEmployedIndividualAnnualIncomes','"Community Survey, 2016"','https://open.africa/dataset/community-survey-south-africa-2016/resource/ce9148f0-1157-4919-9708-19af4574de3f') on conflict do nothing;
