SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_youth_training_and_legislation_prog DROP CONSTRAINT IF EXISTS pk_py_youth_training_and_legislation_prog;
DROP TABLE IF EXISTS public.py_youth_training_and_legislation_prog;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_youth_training_and_legislation_prog (
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

ALTER TABLE ONLY public.py_youth_training_and_legislation_prog ADD CONSTRAINT pk_py_youth_training_and_legislation_prog PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_youth_training_and_legislation_prog VALUES
('level1','KE_1_042',2009,'country','KE','Approved Budget','Youth training and legislation',4,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Actual Payments','Youth training and legislation',0.73,'Kisumu'),
('level1','KE_1_042',2009,'country','KE','Variance','Youth training and legislation',3.27,'Kisumu') ON CONFLICT DO NOTHING;
