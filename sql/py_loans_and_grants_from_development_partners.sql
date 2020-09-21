SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_loans_and_grants_from_development_partners DROP CONSTRAINT IF EXISTS pk_py_loans_and_grants_from_development_partners;
DROP TABLE IF EXISTS public.py_loans_and_grants_from_development_partners;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_loans_and_grants_from_development_partners (
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

ALTER TABLE ONLY public.py_loans_and_grants_from_development_partners ADD CONSTRAINT pk_py_loans_and_grants_from_development_partners PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_loans_and_grants_from_development_partners VALUES
('level1','KE_1_001',2009,'country','KE','Annual CARA Allocation','Transforming Health systems for Universal Care Project (WB)',37.92,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual Budget Allocation','Transforming Health systems for Universal Care Project (WB)',37.92,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Receipts','Transforming Health systems for Universal Care Project (WB)',1.72,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual CARA Allocation','IDA (WB) Credit: Kenya Devolution Support Project (KDSP) Level 1 Grant',30,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual Budget Allocation','IDA (WB) Credit: Kenya Devolution Support Project (KDSP) Level 1 Grant',83.33,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Receipts','IDA (WB) Credit: Kenya Devolution Support Project (KDSP) Level 1 Grant',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual CARA Allocation','IDA (WB) Credit: Kenya Urban Support Project (KUSP) -Urban Development Grant (UDG)',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual Budget Allocation','IDA (WB) Credit: Kenya Urban Support Project (KUSP) -Urban Development Grant (UDG)',259.42,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Receipts','IDA (WB) Credit: Kenya Urban Support Project (KUSP) -Urban Development Grant (UDG)',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual CARA Allocation','DANIDA Grant',24.56,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual Budget Allocation','DANIDA Grant',24.56,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Receipts','DANIDA Grant',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual CARA Allocation','IDA (WB) Credit: Water & Sanitation Development Project (WSDP)',1550,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual Budget Allocation','IDA (WB) Credit: Water & Sanitation Development Project (WSDP)',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Receipts','IDA (WB) Credit: Water & Sanitation Development Project (WSDP)',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual CARA Allocation','Sweden - Agricultural Sector Development Support Programme (ASDSP) II',16.37,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual Budget Allocation','Sweden - Agricultural Sector Development Support Programme (ASDSP) II',16.37,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Receipts','Sweden - Agricultural Sector Development Support Programme (ASDSP) II',0,'Mombasa'),
('level1','KE_1_047',2009,'country','KE','Annual CARA Allocation','Transforming Health systems for Universal care Project (WB)',96.36,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual Budget Allocation','Transforming Health systems for Universal care Project (WB)',96.36,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Receipts','Transforming Health systems for Universal care Project (WB)',13.98,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual CARA Allocation','IDA (WB) Credit: Kenya Devolution Support Project (KDSP) Level 1 Grant',30,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual Budget Allocation','IDA (WB) Credit: Kenya Devolution Support Project (KDSP) Level 1 Grant',30,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Receipts','IDA (WB) Credit: Kenya Devolution Support Project (KDSP) Level 1 Grant',0,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual CARA Allocation','DANIDA Grant',47.16,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual Budget Allocation','DANIDA Grant',47.16,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Receipts','DANIDA Grant',23.58,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual CARA Allocation','Sweden - Agricultural Sector Development Support Programme (ASDSP) II',21.18,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual Budget Allocation','Sweden - Agricultural Sector Development Support Programme (ASDSP) II',21.18,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Receipts','Sweden - Agricultural Sector Development Support Programme (ASDSP) II',0,'Nairobi'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','Transforming Health systems for Universal care Project (WB)',89.18,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','Transforming Health systems for Universal care Project (WB)',89.18,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts in the','Transforming Health systems for Universal care Project (WB)',27.19,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','IDA (WB) Credit (National Agricultural and Rural Inclusive Growth Project NAGRIP)',350,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','IDA (WB) Credit (National Agricultural and Rural Inclusive Growth Project NAGRIP)',350,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts in the','IDA (WB) Credit (National Agricultural and Rural Inclusive Growth Project NAGRIP)',80.43,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','IDA (WB) Credit: Kenya Devolution Support Project (KDSP) Level 1 Grant',30,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','IDA (WB) Credit: Kenya Devolution Support Project (KDSP) Level 1 Grant',30,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts in the','IDA (WB) Credit: Kenya Devolution Support Project (KDSP) Level 1 Grant',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','IDA (WB) Credit: Kenya Urban Support Project (KUSP) -Urban Development Grant (UDG)',136.26,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','IDA (WB) Credit: Kenya Urban Support Project (KUSP) -Urban Development Grant (UDG)',136.26,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts in the','IDA (WB) Credit: Kenya Urban Support Project (KUSP) -Urban Development Grant (UDG)',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','DANIDA Grant',21.28,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','DANIDA Grant',21.28,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts in the','DANIDA Grant',10.64,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','EU Grant (Instruments for Devolution Advise and Support IDEAS)',50.18,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','EU Grant (Instruments for Devolution Advise and Support IDEAS)',50.18,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts in the','EU Grant (Instruments for Devolution Advise and Support IDEAS)',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','Kenya Devolution Support Programme “Level 2 grant”',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','Kenya Devolution Support Programme “Level 2 grant”',296.65,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts in the','Kenya Devolution Support Programme “Level 2 grant”',1296.65,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','Sweden - Agricultural Sector Development Support Programme (ASDSP) II',19.05,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','Sweden - Agricultural Sector Development Support Programme (ASDSP) II',19.05,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts in the','Sweden - Agricultural Sector Development Support Programme (ASDSP) II',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','IDA (WB) Credit: Kenya Urban Support Project (KUSP) -Urban Institutional Grants (UIG)',8.8,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','IDA (WB) Credit: Kenya Urban Support Project (KUSP) -Urban Institutional Grants (UIG)',8.8,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts in the','IDA (WB) Credit: Kenya Urban Support Project (KUSP) -Urban Institutional Grants (UIG)',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','German Development Bank (KfW) - Drought Resilience Programme in Northern Kenya (DRPNK)',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','German Development Bank (KfW) - Drought Resilience Programme in Northern Kenya (DRPNK)',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts in the','German Development Bank (KfW) - Drought Resilience Programme in Northern Kenya (DRPNK)',0,'Makueni') ON CONFLICT DO NOTHING;
