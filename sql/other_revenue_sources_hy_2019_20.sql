SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.other_revenue_sources_hy_2019_20 DROP CONSTRAINT IF EXISTS pk_other_revenue_sources_hy_2019_20;
DROP TABLE IF EXISTS public.other_revenue_sources_hy_2019_20;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.other_revenue_sources_hy_2019_20 (
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

ALTER TABLE ONLY public.other_revenue_sources_hy_2019_20 ADD CONSTRAINT pk_other_revenue_sources_hy_2019_20 PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.other_revenue_sources_hy_2019_20 VALUES
('level1','KE_1_042',2009,'country','KE','Actual receipts','Balance b/f from FY2018/19',1524.08,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','Balance b/f from FY2018/19',1524.08,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','Balance b/f from FY2018/19',1524.08,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual receipts','Own Source Revenue',363.96,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','Own Source Revenue',1438.48,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','Own Source Revenue',1438.48,'Kisumu'),
('level1','KE_1_047',2009,'country','KE','Annual CARA Allocation','A-I-A',0,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual Budget Allocation','A-I-A',266.65,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual receipts','A-I-A',122.81,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual Budget Allocation','Balance b/f from FY2018/19',2580.28,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual receipts','Balance b/f from FY2018/19',2580.28,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual Budget Allocation','Other Revenues',415.85,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual receipts','Other Revenues',415.85,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual Budget Allocation','Own Source Revenue',17049.64,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual receipts','Own Source Revenue',3108.91,'Nairobi') ON CONFLICT DO NOTHING;
