SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_provide_essential_medicines DROP CONSTRAINT IF EXISTS pk_py_provide_essential_medicines;
DROP TABLE IF EXISTS public.py_provide_essential_medicines;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_provide_essential_medicines (
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

ALTER TABLE ONLY public.py_provide_essential_medicines ADD CONSTRAINT pk_py_provide_essential_medicines PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_provide_essential_medicines VALUES
('level1','KE_1_047',2009,'country','KE','No. of women of reproductive age screened for cervical cancer','Provide essential medicines',24042,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','No. of patients treated for diabetes','Provide essential medicines',38971,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','No. of schools going children treated and referred for special care','Provide essential medicines',1623,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','No. of school going children dewormed','Provide essential medicines',114707,'Nairobi') ON CONFLICT DO NOTHING;
