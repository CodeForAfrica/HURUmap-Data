SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_revenue DROP CONSTRAINT IF EXISTS pk_py_revenue;
DROP TABLE IF EXISTS public.py_revenue;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_revenue (
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

ALTER TABLE ONLY public.py_revenue ADD CONSTRAINT pk_py_revenue PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_revenue VALUES
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','Equitable Share of Revenue Raised Nationally',7406.1,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','Equitable Share of Revenue Raised Nationally',7254,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts in the','Equitable Share of Revenue Raised Nationally',2621.76,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','Compensation for User Fee Foregone',19.44,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','Compensation for User Fee Foregone',19.44,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts in the','Compensation for User Fee Foregone',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','Leasing of Medical Equipment',131.91,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','Leasing of Medical Equipment',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts in the','Leasing of Medical Equipment',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','Road Maintenance Fuel Levy Fund',210.23,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','Road Maintenance Fuel Levy Fund',210.23,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts in the','Road Maintenance Fuel Levy Fund',52.56,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','Rehabilitation of Village Polytechnics',60.33,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','Rehabilitation of Village Polytechnics',60.33,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts in the','Rehabilitation of Village Polytechnics',0,'Makueni'),
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
('level1','KE_1_017',2009,'country','KE','Actual Receipts in the','German Development Bank (KfW) - Drought Resilience Programme in Northern Kenya (DRPNK)',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','Own Source Revenue',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','Own Source Revenue',609,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts in the','Own Source Revenue',205.14,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','Balance b/f from FY2018/19',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','Balance b/f from FY2018/20',1636.21,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts in the','Balance b/f from FY2018/21',2709.79,'Makueni') ON CONFLICT DO NOTHING;
