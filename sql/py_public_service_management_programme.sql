SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_public_service_management_programme DROP CONSTRAINT IF EXISTS pk_py_public_service_management_programme;
DROP TABLE IF EXISTS public.py_public_service_management_programme;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_public_service_management_programme (
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

ALTER TABLE ONLY public.py_public_service_management_programme ADD CONSTRAINT pk_py_public_service_management_programme PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_public_service_management_programme VALUES
('level1','KE_1_047',2009,'country','KE','Approved Budget','General Administration Planning and Support Services',231.48,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','General Administration Planning and Support Services',94.67,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','General Administration Planning and Support Services',136.81,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Approved Budget','Crop Development and Management',38.49,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','Crop Development and Management',3.05,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','Crop Development and Management',35.45,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Approved Budget','Fisheries Development and Management',31.51,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','Fisheries Development and Management',0.68,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','Fisheries Development and Management',30.83,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Approved Budget','Livestock Resources Management and Development',31.53,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','Livestock Resources Management and Development',0,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','Livestock Resources Management and Development',31.53,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Approved Budget','Animal Health, Safety and Quality Assurance',55.15,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','Animal Health, Safety and Quality Assurance',0,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','Animal Health, Safety and Quality Assurance',55.15,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Approved Budget','Aforestation',24.53,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','Aforestation',0,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','Aforestation',24.53,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Approved Budget','Food Systems and Surveillance',26.83,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','Food Systems and Surveillance',0,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','Food Systems and Surveillance',26.83,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Approved Budget','Agricultural Development Support Project',47.03,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','Agricultural Development Support Project',0,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','Agricultural Development Support Project',47.03,'Nairobi') ON CONFLICT DO NOTHING;
