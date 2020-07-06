SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.revenue_raised_nationally_hy_2019_20 DROP CONSTRAINT IF EXISTS pk_revenue_raised_nationally_hy_2019_20;
DROP TABLE IF EXISTS public.revenue_raised_nationally_hy_2019_20;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.revenue_raised_nationally_hy_2019_20 (
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

ALTER TABLE ONLY public.revenue_raised_nationally_hy_2019_20 ADD CONSTRAINT pk_revenue_raised_nationally_hy_2019_20 PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.revenue_raised_nationally_hy_2019_20 VALUES
('level1','KE_1_042',2009,'country','KE','Annual Budget Allocation','Equitable Share of Revenue Raised Nationally',6696,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual receipts','Equitable Share of Revenue Raised Nationally',2420.09,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Annual CARA Allocation','Equitable Share of Revenue Raised Nationally',6696,'Kisumu'),
('level1','KE_1_047',2009,'country','KE','Annual Budget Allocation','Equitable Share of Revenue Raised nationally',15919.95,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual receipts','Equitable Share of Revenue Raised nationally',15919.95,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Annual CARA Allocation','Equitable Share of Revenue Raised nationally',5635.66,'Nairobi') ON CONFLICT DO NOTHING;
