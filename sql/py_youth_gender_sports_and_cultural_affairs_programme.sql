SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_youth_gender_sports_and_cultural_affairs_programme DROP CONSTRAINT IF EXISTS pk_py_youth_gender_sports_and_cultural_affairs_programme;
DROP TABLE IF EXISTS public.py_youth_gender_sports_and_cultural_affairs_programme;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_youth_gender_sports_and_cultural_affairs_programme (
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

ALTER TABLE ONLY public.py_youth_gender_sports_and_cultural_affairs_programme ADD CONSTRAINT pk_py_youth_gender_sports_and_cultural_affairs_programme PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_youth_gender_sports_and_cultural_affairs_programme VALUES
('level1','KE_1_001',2009,'country','KE','Approved Budget','Administration Unit',186.31,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Administration Unit',35.58,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Administration Unit',150.74,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Youth Empowerment',101.75,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Youth Empowerment',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Youth Empowerment',101.75,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Gender Affairs and Disability Mainstreaming',44,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Gender Affairs and Disability Mainstreaming',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Gender Affairs and Disability Mainstreaming',44,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Sports development',206.91,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Sports development',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Sports development',206.91,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Cultural Affairs',66.89,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Cultural Affairs',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Cultural Affairs',66.89,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Approved Budget','Public Recreation and Entertainment',40,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Actual Payments','Public Recreation and Entertainment',0,'Mombasa'),
('level1','KE_1_001',2009,'country','KE','Variance','Public Recreation and Entertainment',40,'Mombasa') ON CONFLICT DO NOTHING;
