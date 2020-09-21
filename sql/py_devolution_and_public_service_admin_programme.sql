SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_devolution_and_public_service_admin_programme DROP CONSTRAINT IF EXISTS pk_py_devolution_and_public_service_admin_programme;
DROP TABLE IF EXISTS public.py_devolution_and_public_service_admin_programme;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_devolution_and_public_service_admin_programme (
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

ALTER TABLE ONLY public.py_devolution_and_public_service_admin_programme ADD CONSTRAINT pk_py_devolution_and_public_service_admin_programme PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_devolution_and_public_service_admin_programme VALUES
('level1','KE_1_001',2009,'country','KE','Approved Budget','Administration',659.66,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Administration',281.78,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Administration',377.88,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Devolution and public service administration',124.36,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Devolution and public service administration',60.25,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Devolution and public service administration',64.11,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Public Service Reforms and Delivery',181.05,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Public Service Reforms and Delivery',1,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Public Service Reforms and Delivery',180.05,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Compliance and Enforcement',29.43,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Compliance and Enforcement',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Compliance and Enforcement',29.43,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','County Administration and decentralized services',121.48,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','County Administration and decentralized services',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','County Administration and decentralized services',121.48,'Mombasa') ON CONFLICT DO NOTHING;
