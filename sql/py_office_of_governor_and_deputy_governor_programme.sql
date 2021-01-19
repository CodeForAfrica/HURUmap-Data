SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_office_of_governor_and_deputy_governor_programme DROP CONSTRAINT IF EXISTS pk_py_office_of_governor_and_deputy_governor_programme;
DROP TABLE IF EXISTS public.py_office_of_governor_and_deputy_governor_programme;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_office_of_governor_and_deputy_governor_programme (
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

ALTER TABLE ONLY public.py_office_of_governor_and_deputy_governor_programme ADD CONSTRAINT pk_py_office_of_governor_and_deputy_governor_programme PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_office_of_governor_and_deputy_governor_programme VALUES
('level1','KE_1_047',2009,'country','KE','Approved Budget','General Administration Planning and Support Services',114.01,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','General Administration Planning and Support Services',38.75,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','General Administration Planning and Support Services',75.26,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Approved Budget','Information And Communication Services',313.5,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','Information And Communication Services',11.73,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','Information And Communication Services',301.77,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Approved Budget','ICT Infrastructure Development',125,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','ICT Infrastructure Development',0,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','ICT Infrastructure Development',125,'Nairobi') ON CONFLICT DO NOTHING;
