SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.percent_of_individuals_below_poverty_line DROP CONSTRAINT IF EXISTS pk_percent_of_individuals_below_poverty_line;
DROP TABLE IF EXISTS public.percent_of_individuals_below_poverty_line;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.percent_of_individuals_below_poverty_line (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.percent_of_individuals_below_poverty_line VALUES
('country','KE',2009,'continent','AFR',45.2,'Kenya'),
('level1','KE_1_047',2009,'country','KE',21.8,'Nairobi'),
('level1','KE_1_018',2009,'country','KE',38.8,'Nyandarua'),
('level1','KE_1_019',2009,'country','KE',27.6,'Nyeri'),
('level1','KE_1_020',2009,'country','KE',25.9,'Kirinyaga'),
('level1','KE_1_022',2009,'country','KE',24.2,'Kiambu'),
('level1','KE_1_022',2009,'country','KE',22.1,'Kiambu'),
('level1','KE_1_001',2009,'country','KE',34.8,'Mombasa'),
('level1','KE_1_002',2009,'country','KE',70.7,'Kwale'),
('level1','KE_1_003',2009,'country','KE',58.4,'Kilifi'),
('level1','KE_1_004',2009,'country','KE',75.6,'Tana River'),
('level1','KE_1_005',2009,'country','KE',32.3,'Lamu'),
('level1','KE_1_006',2009,'country','KE',58.2,'Taveta'),
('level1','KE_1_010',2009,'country','KE',75.8,'Marsabit'),
('level1','KE_1_011',2009,'country','KE',65.3,'Isiolo'),
('level1','KE_1_012',2009,'country','KE',31,'Meru'),
('level1','KE_1_013',2009,'country','KE',65.1,'Tharaka'),
('level1','KE_1_014',2009,'country','KE',35.3,'Embu'),
('level1','KE_1_015',2009,'country','KE',60.4,'Kitui'),
('level1','KE_1_016',2009,'country','KE',42.6,'Machakos'),
('level1','KE_1_017',2009,'country','KE',60.6,'Makueni'),
('level1','KE_1_017',2009,'country','KE',70.7,'Makueni'),
('level1','KE_1_007',2009,'country','KE',58.9,'Garissa'),
('level1','KE_1_008',2009,'country','KE',84.2,'Wajir'),
('level1','KE_1_009',2009,'country','KE',85.8,'Mandera'),
('level1','KE_1_041',2009,'country','KE',38.2,'Siaya'),
('level1','KE_1_042',2009,'country','KE',39.9,'Kisumu'),
('level1','KE_1_043',2009,'country','KE',48.4,'Homa Bay'),
('level1','KE_1_044',2009,'country','KE',49.6,'Migori'),
('level1','KE_1_045',2009,'country','KE',51.4,'Kisii'),
('level1','KE_1_046',2009,'country','KE',50.7,'Nyamira'),
('level1','KE_1_023',2009,'country','KE',87.5,'Turkana'),
('level1','KE_1_024',2009,'country','KE',66.3,'West Pokot'),
('level1','KE_1_025',2009,'country','KE',71.4,'Samburu'),
('level1','KE_1_026',2009,'country','KE',41.2,'Trans-Nzoia'),
('level1','KE_1_030',2009,'country','KE',52.2,'Baringo'),
('level1','KE_1_029',2009,'country','KE',40,'Nandi'),
('level1','KE_1_031',2009,'country','KE',47.9,'Laikipia'),
('level1','KE_1_031',2009,'country','KE',63.8,'Laikipia'),
('level1','KE_1_032',2009,'country','KE',33.5,'Nakuru'),
('level1','KE_1_033',2009,'country','KE',41,'Narok'),
('level1','KE_1_034',2009,'country','KE',38,'Kajiado'),
('level1','KE_1_035',2009,'country','KE',39.3,'Kericho'),
('level1','KE_1_036',2009,'country','KE',51.3,'Bomet'),
('level1','KE_1_037',2009,'country','KE',49.2,'Kakamega'),
('level1','KE_1_038',2009,'country','KE',38.9,'Vihiga'),
('level1','KE_1_038',2009,'country','KE',30.9,'Vihiga'),
('level1','KE_1_039',2009,'country','KE',47.3,'Bungoma'),
('level1','KE_1_040',2009,'country','KE',60.4,'Busia');
      
INSERT into public.sources(geo_level, country_code, pg_table_name, table_name, source_title, source_link) VALUES('country','KE','percent_of_individuals_below_poverty_line','allPercentOfIndividualsBelowPovertyLines','"Exploring Kenya Inequality National Report, 2017"','https://open.africa/dataset/exploring-kenya-inequality-national-report-2017/resource/90e440f3-bbee-416b-a2a5-454d9df9d8ad') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, pg_table_name, table_name, source_title, source_link) VALUES('level1','KE','percent_of_individuals_below_poverty_line','allPercentOfIndividualsBelowPovertyLines','"Exploring Kenya Inequality National Report, 2017"','https://open.africa/dataset/exploring-kenya-inequality-national-report-2017/resource/90e440f3-bbee-416b-a2a5-454d9df9d8ad') on conflict do nothing;
