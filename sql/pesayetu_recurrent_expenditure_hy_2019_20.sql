SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.pesayetu_recurrent_expenditure_hy_2019_20 DROP CONSTRAINT IF EXISTS pk_pesayetu_recurrent_expenditure_hy_2019_20;
DROP TABLE IF EXISTS public.pesayetu_recurrent_expenditure_hy_2019_20;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.pesayetu_recurrent_expenditure_hy_2019_20 (
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

ALTER TABLE ONLY public.pesayetu_recurrent_expenditure_hy_2019_20 ADD CONSTRAINT pk_pesayetu_recurrent_expenditure_hy_2019_20 PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.pesayetu_recurrent_expenditure_hy_2019_20 VALUES
('level1','KE_1_042',2009,'country','KE','Expenditure','Compensation to Employees',2409.35,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Exchequer Issues','Compensation to Employees',2111.69,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Budget','Compensation to Employees',4041.56,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Exchequer Issues','Operations & Maintenance',900.64,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Expenditure','Operations & Maintenance',703.21,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Budget','Operations and Maintenance',3264.4,'Kisumu'),
('level1','KE_1_047',2009,'country','KE','Budget','Compensation to Employees',14241.48,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Expenditure','Compensation to Employees',5919.79,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Budget','Operations & Maintenance',11468.65,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Expenditure','Operations & Maintenance',4555.16,'Nairobi') ON CONFLICT DO NOTHING;
