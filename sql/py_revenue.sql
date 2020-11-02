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
('level1','KE_1_001',2009,'country','KE','Annual CARA Allocation','Equitable Share of Revenue Raised Nationally',7057.95,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual Budget Allocation','Equitable Share of Revenue Raised Nationally',7485.44,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Receipts','Equitable Share of Revenue Raised Nationally',2498.51,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual CARA Allocation','Conditional Grants from the National Government Revenue',769.56,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual Budget Allocation','Conditional Grants from the National Government Revenue',769.56,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Receipts','Conditional Grants from the National Government Revenue',184.75,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual CARA Allocation','Loans and Grants from Development Partners',1658.86,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual Budget Allocation','Loans and Grants from Development Partners',421.61,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Receipts','Loans and Grants from Development Partners',1.72,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual CARA Allocation','Other Sources of Revenue',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Annual Budget Allocation','Other Sources of Revenue',5002.76,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Receipts','Other Sources of Revenue',1483.05,'Mombasa'),
('level1','KE_1_047',2009,'country','KE','Annual CARA Allocation','Equitable Share of Revenue Raised Nationally',15919.95,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual Budget Allocation','Equitable Share of Revenue Raised Nationally',15919.95,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Receipts','Equitable Share of Revenue Raised Nationally',5635.66,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual CARA Allocation','Conditional Grants from the National Government Revenue',686.23,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual Budget Allocation','Conditional Grants from the National Government Revenue',554.32,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Receipts','Conditional Grants from the National Government Revenue',0,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual CARA Allocation','Loans and Grants from Development Partners',194.7,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual Budget Allocation','Loans and Grants from Development Partners',194.7,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Receipts','Loans and Grants from Development Partners',37.56,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual CARA Allocation','Other Sources of Revenue',0,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual Budget Allocation','Other Sources of Revenue',20312.42,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Receipts','Other Sources of Revenue',6227.85,'Nairobi'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','Equitable Share of Revenue Raised Nationally',7406.1,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','Equitable Share of Revenue Raised Nationally',7254,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts','Equitable Share of Revenue Raised Nationally',2621.76,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','Conditional Grants from the National Government Revenue',421.91,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','Conditional Grants from the National Government Revenue',290,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts','Conditional Grants from the National Government Revenue',52.56,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','Loans and Grants from Development Partners',704.75,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','Loans and Grants from Development Partners',1001.41,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts','Loans and Grants from Development Partners',414.91,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual CARA Allocation','Other Sources of Revenue',0,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Annual Budget Allocation','Other Sources of Revenue',2245.21,'Makueni'),
('level1','KE_1_017',2009,'country','KE','Actual Receipts','Other Sources of Revenue',914.93,'Makueni'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','Equitable Share of Revenue Raised Nationally',6696,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','Equitable Share of Revenue Raised Nationally',6696,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual Receipts','Equitable Share of Revenue Raised Nationally',2420.09,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','Conditional Grants from the National Government Revenue',757.96,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','Conditional Grants from the National Government Revenue',613.85,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual Receipts','Conditional Grants from the National Government Revenue',163.84,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','Loans and Grants from Development Partners',1119.58,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','Loans and Grants from Development Partners',1533.14,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual Receipts','Loans and Grants from Development Partners',67.03,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','Other Sources of Revenue',2962.56,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','Other Sources of Revenue',2962.56,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual Receipts','Other Sources of Revenue',1888.04,'Kisumu') ON CONFLICT DO NOTHING;
