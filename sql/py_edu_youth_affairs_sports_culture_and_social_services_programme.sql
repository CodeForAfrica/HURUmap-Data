SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_edu_youth_affairs_sports_culture_and_social_services_programme DROP CONSTRAINT IF EXISTS pk_py_edu_youth_affairs_sports_culture_and_social_services_programme;
DROP TABLE IF EXISTS public.py_edu_youth_affairs_sports_culture_and_social_services_programme;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_edu_youth_affairs_sports_culture_and_social_services_programme (
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

ALTER TABLE ONLY public.py_edu_youth_affairs_sports_culture_and_social_services_programme ADD CONSTRAINT pk_py_edu_youth_affairs_sports_culture_and_social_services_programme PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_edu_youth_affairs_sports_culture_and_social_services_programme VALUES
('level1','KE_1_047',2009,'country','KE','Approved Budget','General Administration Planning and Support Services',428.12,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','General Administration Planning and Support Services',157.44,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','General Administration Planning and Support Services',270.68,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Approved Budget','Co-operative Development and Audit Services',46.28,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','Co-operative Development and Audit Services',5.24,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','Co-operative Development and Audit Services',41.04,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Approved Budget','Tourism Promotion and Marketing',43,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','Tourism Promotion and Marketing',0.92,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','Tourism Promotion and Marketing',42.08,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Approved Budget','Trade development and Market Services',568,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','Trade development and Market Services',1.04,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','Trade development and Market Services',566.96,'Nairobi') ON CONFLICT DO NOTHING;
