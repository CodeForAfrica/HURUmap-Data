SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.loans_grants_development_partners_hy_2019_20 DROP CONSTRAINT IF EXISTS pk_loans_grants_development_partners_hy_2019_20;
DROP TABLE IF EXISTS public.loans_grants_development_partners_hy_2019_20;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.loans_grants_development_partners_hy_2019_20 (
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

ALTER TABLE ONLY public.loans_grants_development_partners_hy_2019_20 ADD CONSTRAINT pk_loans_grants_development_partners_hy_2019_20 PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.loans_grants_development_partners_hy_2019_20 VALUES
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','DANIDA Grant',20.63,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','DANIDA Grant',21.97,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual receipts','DANIDA Grant',10.31,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual receipts','EU - IDEAS Grant',0,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','EU - IDEAS Grant',90,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','EU - IDEAS Grant',36.07,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','EU - WATER Grant',80,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','EU - WATER Grant',80,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual receipts','EU - WATER Grant',0,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual receipts','IDA (WB) Credit - KDSP Level 1 Grant',0,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','IDA (WB) Credit - KDSP Level 1 Grant',49.64,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','IDA (WB) Credit - KDSP Level 1 Grant',30,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual receipts','IDA (WB) Credit - KUSP UDG',0,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','IDA (WB) Credit - KUSP UDG',773.57,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','IDA (WB) Credit - KUSP UDG',773.57,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','IDA (WB) Credit - KUSP UIG',8.8,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','IDA (WB) Credit - KUSP UIG',41.2,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual receipts','IDA (WB) Credit - KUSP UIG',0,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual receipts','IDA (WB) KCSAP',45.39,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','IDA (WB) KCSAP',118.48,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','IDA (WB) KCSAP',118.48,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual receipts','Sweden-ASDSP II',0,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','Sweden-ASDSP II',16.33,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','Sweden-ASDSP II',17.03,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','Transforming Health Systems for Universal Care Project ( WB )',67.36,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','Transforming Health Systems for Universal Care Project ( WB )',35,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual receipts','Transforming Health Systems for Universal Care Project ( WB )',11.33,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','Universal Health Care',0,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','Universal Health Care',274.58,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual receipts','Universal Health Care',0,'Kisumu'),
('level1','KE_1_047',2009,'country','KE','Annual CARA Allocation','DANIDA Grant',47.16,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual receipts','DANIDA Grant',23.58,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual Budget Allocation','DANIDA Grant',47.16,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual Budget Allocation','IDA (WB) Credit - KDSP Level 1 Grant',30,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual CARA Allocation','IDA (WB) Credit - KDSP Level 1 Grant',30,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual receipts','IDA (WB) Credit - KDSP Level 1 Grant',0,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual Budget Allocation','Sweden-ASDSP II',21.18,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual CARA Allocation','Sweden-ASDSP II',21.18,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual receipts','Sweden-ASDSP II',0,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual CARA Allocation','Transforming Health systems for Universal care Project (WB)',96.36,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual receipts','Transforming Health systems for Universal care Project (WB)',13.98,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual Budget Allocation','Transforming Health systems for Universal care Project (WB)',96.36,'Nairobi') ON CONFLICT DO NOTHING;
