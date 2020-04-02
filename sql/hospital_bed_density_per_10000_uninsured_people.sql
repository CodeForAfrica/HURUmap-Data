SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.hospital_bed_density_per_10000_uninsured_people DROP CONSTRAINT IF EXISTS pk_hospital_bed_density_per_10000_uninsured_people;
DROP TABLE IF EXISTS public.hospital_bed_density_per_10000_uninsured_people;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.hospital_bed_density_per_10000_uninsured_people (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable NUMERIC,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.hospital_bed_density_per_10000_uninsured_people VALUES
('level1','ZA_1_003',2009,'country','ZA',2011,23.3,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA',2017,21,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA',2018,20.6,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA',2012,22.7,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA',2013,21.5,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA',2004,24.4,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA',2005,25.7,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA',2006,25.2,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA',2007,24.4,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA',2019,20.6,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA',2014,22.1,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA',2015,21.8,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA',2008,23.8,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA',2009,23.3,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA',2003,26.5,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA',2010,23.7,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA',2016,21.4,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA',2003,20.9,'Free State'),
('level1','ZA_1_002',2009,'country','ZA',2004,21.1,'Free State'),
('level1','ZA_1_002',2009,'country','ZA',2005,21,'Free State'),
('level1','ZA_1_002',2009,'country','ZA',2006,21.6,'Free State'),
('level1','ZA_1_002',2009,'country','ZA',2007,21.4,'Free State'),
('level1','ZA_1_002',2009,'country','ZA',2008,21.3,'Free State'),
('level1','ZA_1_002',2009,'country','ZA',2009,20.9,'Free State'),
('level1','ZA_1_002',2009,'country','ZA',2010,21,'Free State'),
('level1','ZA_1_002',2009,'country','ZA',2011,20.6,'Free State'),
('level1','ZA_1_002',2009,'country','ZA',2012,20.5,'Free State'),
('level1','ZA_1_002',2009,'country','ZA',2013,20.3,'Free State'),
('level1','ZA_1_002',2009,'country','ZA',2014,19.8,'Free State'),
('level1','ZA_1_002',2009,'country','ZA',2015,20.1,'Free State'),
('level1','ZA_1_002',2009,'country','ZA',2016,20,'Free State'),
('level1','ZA_1_002',2009,'country','ZA',2017,19.9,'Free State'),
('level1','ZA_1_002',2009,'country','ZA',2018,19.5,'Free State'),
('level1','ZA_1_002',2009,'country','ZA',2019,19.8,'Free State'),
('level1','ZA_1_009',2009,'country','ZA',2003,21.7,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA',2004,21.4,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA',2005,20.8,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA',2006,20.1,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA',2007,20.7,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA',2008,19.8,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA',2009,19.6,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA',2010,19.5,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA',2011,19,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA',2012,18.7,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA',2013,18.1,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA',2014,16.9,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA',2015,17.9,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA',2016,18.4,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA',2017,18.3,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA',2018,17.7,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA',2019,17.1,'Gauteng'),
('level1','ZA_1_001',2009,'country','ZA',2003,31.7,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA',2004,30.7,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA',2005,29.3,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA',2006,28.7,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA',2007,28.2,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA',2008,27.2,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA',2009,25.9,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA',2010,24.2,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA',2011,24.9,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA',2012,23.4,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA',2013,24.3,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA',2014,22.6,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA',2015,23.6,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA',2016,21.7,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA',2017,24.1,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA',2018,20.9,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA',2019,20.9,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA',2003,20.1,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA',2004,20,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA',2005,18.1,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA',2006,17.9,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA',2007,17.4,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA',2008,17.1,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA',2009,16.3,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA',2010,15.7,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA',2011,15.3,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA',2012,15.3,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA',2013,15.3,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA',2014,15.2,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA',2015,14,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA',2016,14.2,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA',2017,14.6,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA',2018,14.2,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA',2019,14.2,'Limpopo'),
('level1','ZA_1_004',2009,'country','ZA',2003,16.4,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA',2004,16.5,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA',2005,16.5,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA',2006,16.9,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA',2007,15.5,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA',2008,15,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA',2009,14.7,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA',2010,14.7,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA',2011,13.5,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA',2012,12.4,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA',2013,12.8,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA',2014,12.5,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA',2015,13.1,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA',2016,13.1,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA',2017,13,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA',2018,13,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA',2019,12.4,'Mpumalanga'),
('level1','ZA_1_007',2009,'country','ZA',2003,18.7,'North West'),
('level1','ZA_1_007',2009,'country','ZA',2004,17.5,'North West'),
('level1','ZA_1_007',2009,'country','ZA',2005,15.9,'North West'),
('level1','ZA_1_007',2009,'country','ZA',2006,18.3,'North West'),
('level1','ZA_1_007',2009,'country','ZA',2007,17.6,'North West'),
('level1','ZA_1_007',2009,'country','ZA',2008,17.1,'North West'),
('level1','ZA_1_007',2009,'country','ZA',2009,16.8,'North West'),
('level1','ZA_1_007',2009,'country','ZA',2010,16.1,'North West'),
('level1','ZA_1_007',2009,'country','ZA',2011,15.6,'North West'),
('level1','ZA_1_007',2009,'country','ZA',2012,15.5,'North West'),
('level1','ZA_1_007',2009,'country','ZA',2013,14.1,'North West'),
('level1','ZA_1_007',2009,'country','ZA',2014,13.5,'North West'),
('level1','ZA_1_007',2009,'country','ZA',2015,15.6,'North West'),
('level1','ZA_1_007',2009,'country','ZA',2016,14.4,'North West'),
('level1','ZA_1_007',2009,'country','ZA',2017,13.2,'North West'),
('level1','ZA_1_007',2009,'country','ZA',2018,13.6,'North West'),
('level1','ZA_1_007',2009,'country','ZA',2019,13.8,'North West'),
('level1','ZA_1_006',2009,'country','ZA',2003,22.3,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA',2004,22.1,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA',2005,21.8,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA',2006,21.9,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA',2007,21,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA',2008,21.8,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA',2009,20.4,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA',2010,21.2,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA',2011,18.6,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA',2012,19,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA',2013,18,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA',2014,16,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA',2015,18.4,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA',2016,17.9,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA',2017,20.2,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA',2018,19,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA',2019,17.7,'Northern Cape'),
('country','ZA',2009,'continent','AFR',2003,24,'South Africa'),
('country','ZA',2009,'continent','AFR',2004,23.3,'South Africa'),
('country','ZA',2009,'continent','AFR',2005,22.7,'South Africa'),
('country','ZA',2009,'continent','AFR',2006,22.4,'South Africa'),
('country','ZA',2009,'continent','AFR',2007,22.1,'South Africa'),
('country','ZA',2009,'continent','AFR',2008,21.4,'South Africa'),
('country','ZA',2009,'continent','AFR',2009,20.9,'South Africa'),
('country','ZA',2009,'continent','AFR',2010,20.3,'South Africa'),
('country','ZA',2009,'continent','AFR',2011,20,'South Africa'),
('country','ZA',2009,'continent','AFR',2012,19.4,'South Africa'),
('country','ZA',2009,'continent','AFR',2013,19.3,'South Africa'),
('country','ZA',2009,'continent','AFR',2014,18.6,'South Africa'),
('country','ZA',2009,'continent','AFR',2015,19.1,'South Africa'),
('country','ZA',2009,'continent','AFR',2016,18.6,'South Africa'),
('country','ZA',2009,'continent','AFR',2017,19,'South Africa'),
('country','ZA',2009,'continent','AFR',2018,18.1,'South Africa'),
('country','ZA',2009,'continent','AFR',2019,17.9,'South Africa'),
('level1','ZA_1_008',2009,'country','ZA',2003,23.8,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA',2004,24,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA',2005,23.3,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA',2006,22,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA',2007,22.4,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA',2008,21.8,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA',2009,22,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA',2010,20.4,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA',2011,20.6,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA',2012,20.4,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA',2013,20.5,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA',2014,20.7,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA',2015,20.8,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA',2016,20.5,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA',2017,20.3,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA',2018,20,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA',2019,20,'Western Cape');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allHospitalBedDensityPer10000UninsuredPeople','"South African Health Review, 2019"','https://open.africa/dataset/south-african-health-review-2019/resource/725585e4-10c9-4ef3-a22a-d9ab297df71c') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allHospitalBedDensityPer10000UninsuredPeople','"South African Health Review, 2019"','https://open.africa/dataset/south-african-health-review-2019/resource/725585e4-10c9-4ef3-a22a-d9ab297df71c') on conflict do nothing;
