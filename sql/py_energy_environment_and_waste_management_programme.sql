SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_energy_environment_and_waste_management_programme DROP CONSTRAINT IF EXISTS pk_py_energy_environment_and_waste_management_programme;
DROP TABLE IF EXISTS public.py_energy_environment_and_waste_management_programme;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_energy_environment_and_waste_management_programme (
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

ALTER TABLE ONLY public.py_energy_environment_and_waste_management_programme ADD CONSTRAINT pk_py_energy_environment_and_waste_management_programme PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_energy_environment_and_waste_management_programme VALUES
('level1','KE_1_001',2009,'country','KE','Approved Budget','Administration, Planning and Support Services',416.87,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Administration, Planning and Support Services',149.2,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Administration, Planning and Support Services',267.66,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Waste Management',285.07,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Waste Management',11.34,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Waste Management',273.73,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Environmental Compliance and Monitoring',167.07,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Environmental Compliance and Monitoring',4.78,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Environmental Compliance and Monitoring',162.29,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Climate Change',53.25,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Climate Change',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Climate Change',53.25,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Energy',20.25,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Energy',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Energy',20.25,'Mombasa') ON CONFLICT DO NOTHING;
