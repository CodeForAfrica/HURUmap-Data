SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_conditional_grants_from_the_national_government DROP CONSTRAINT IF EXISTS pk_py_conditional_grants_from_the_national_government;
DROP TABLE IF EXISTS public.py_conditional_grants_from_the_national_government;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_conditional_grants_from_the_national_government (
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

ALTER TABLE ONLY public.py_conditional_grants_from_the_national_government ADD CONSTRAINT pk_py_conditional_grants_from_the_national_government PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_conditional_grants_from_the_national_government VALUES
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','Conditional Grants to Level-5 Hospitals',369.02,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','Conditional Grants to Level-5 Hospitals',369.02,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual Receipts','Conditional Grants to Level-5 Hospitals',163.84,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','Road Maintenance Fuel Levy Fund',194.06,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','Road Maintenance Fuel Levy Fund',181.88,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual Receipts','Road Maintenance Fuel Levy Fund',0,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','Leasing of Medical Equipment',131.91,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','Leasing of Medical Equipment',0,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual Receipts','Leasing of Medical Equipment',0,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','Rehabilitation of Village Polytechnics',41.67,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','Rehabilitation of Village Polytechnics',41.65,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual Receipts','Rehabilitation of Village Polytechnics',0,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','Compensation for User Fee Foregone',21.3,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','Compensation for User Fee Foregone',21.3,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual Receipts','Compensation for User Fee Foregone',0,'Kisumu') ON CONFLICT DO NOTHING;
