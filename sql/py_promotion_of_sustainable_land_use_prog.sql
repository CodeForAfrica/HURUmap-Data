SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_promotion_of_sustainable_land_use_prog DROP CONSTRAINT IF EXISTS pk_py_promotion_of_sustainable_land_use_prog;
DROP TABLE IF EXISTS public.py_promotion_of_sustainable_land_use_prog;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_promotion_of_sustainable_land_use_prog (
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

ALTER TABLE ONLY public.py_promotion_of_sustainable_land_use_prog ADD CONSTRAINT pk_py_promotion_of_sustainable_land_use_prog PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_promotion_of_sustainable_land_use_prog VALUES
('level1','KE_1_042',2009,'country','KE','Approved Budget','Promotion of sustainable land use',72.99,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual Payments','Promotion of sustainable land use',0.43,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Variance','Promotion of sustainable land use',72.56,'Kisumu') ON CONFLICT DO NOTHING;
