SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.py_liquor_licensing_board_programme DROP CONSTRAINT IF EXISTS pk_py_liquor_licensing_board_programme;
DROP TABLE IF EXISTS public.py_liquor_licensing_board_programme;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.py_liquor_licensing_board_programme (
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

ALTER TABLE ONLY public.py_liquor_licensing_board_programme ADD CONSTRAINT pk_py_liquor_licensing_board_programme PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable_2, variable_1, value, name);

INSERT INTO public.py_liquor_licensing_board_programme VALUES
('level1','KE_1_047',2009,'country','KE','Approved Budget','General',250,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Actual Payments','General',173.56,'Nairobi'),
('level1','KE_1_047',2009,'country','KE','Variance','General',76.44,'Nairobi') ON CONFLICT DO NOTHING;
