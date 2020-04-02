SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.health_facility_visited DROP CONSTRAINT IF EXISTS pk_health_facility_visited;
DROP TABLE IF EXISTS public.health_facility_visited;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.health_facility_visited (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT
);

INSERT INTO public.health_facility_visited VALUES
('level1','ZA_1_003',2009,'country','ZA','Do not know',0,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Other in private sector',1081.59,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Clinic',5241265.71,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Hospital',319957.19,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Pharmacy/chemist',9918.35,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Unspecified',11757.6,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Traditional healer',43417.82,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Health facility provided by employer',0,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Private doctor/specialist',862180.2,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Spiritual healer''s workplace/church',4032.91,'Eastern Cape'),
('level1','ZA_1_003',2009,'country','ZA','Other in the public sector',14526.17,'Eastern Cape'),
('level1','ZA_1_002',2009,'country','ZA','Clinic',1818788.01,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Private doctor/specialist',803915.07,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Other in private sector',884.45,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Unspecified',0,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Spiritual healer''s workplace/church',1361.33,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Pharmacy/chemist',11315.22,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Health facility provided by employer',0,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Hospital',150797.97,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Traditional healer',10611.89,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Do not know',0,'Free State'),
('level1','ZA_1_002',2009,'country','ZA','Other in the public sector',93574.13,'Free State'),
('level1','ZA_1_009',2009,'country','ZA','Private doctor/specialist',4123769.93,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Traditional healer',106230.71,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Unspecified',81040.5,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Spiritual healer''s workplace/church',13435.06,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Pharmacy/chemist',50836.04,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Clinic',8977446.15,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Health facility provided by employer',6027.6,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Do not know',24181.37,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Other in the public sector',32241.12,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Hospital',1241497.18,'Gauteng'),
('level1','ZA_1_009',2009,'country','ZA','Other in private sector',4038.83,'Gauteng'),
('level1','ZA_1_001',2009,'country','ZA','Spiritual healer''s workplace/church',0,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Other in the public sector',54938.94,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Do not know',2070.78,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Clinic',9011715.93,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Unspecified',10504.11,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Traditional healer',59809.9,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Health facility provided by employer',0,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Pharmacy/chemist',11454.16,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Private doctor/specialist',1548228.13,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Other in private sector',3706.99,'KwaZulu-Natal'),
('level1','ZA_1_001',2009,'country','ZA','Hospital',512788.66,'KwaZulu-Natal'),
('level1','ZA_1_005',2009,'country','ZA','Other in private sector',1866.3,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Health facility provided by employer',0,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Spiritual healer''s workplace/church',27274.68,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Pharmacy/chemist',13080.9,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Unspecified',1925.04,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Do not know',0,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Private doctor/specialist',496121.15,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Clinic',4829799.2,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Hospital',420105.43,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Traditional healer',48708.31,'Limpopo'),
('level1','ZA_1_005',2009,'country','ZA','Other in the public sector',14875.07,'Limpopo'),
('level1','ZA_1_004',2009,'country','ZA','Hospital',195788.23,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Other in private sector',0,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Private doctor/specialist',753466.18,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Pharmacy/chemist',25978.27,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Clinic',3485163.4,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Traditional healer',34761.44,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Do not know',0,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Spiritual healer''s workplace/church',7441.71,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Unspecified',9600.45,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Other in the public sector',7655.08,'Mpumalanga'),
('level1','ZA_1_004',2009,'country','ZA','Health facility provided by employer',3578.73,'Mpumalanga'),
('level1','ZA_1_007',2009,'country','ZA','Clinic',3067313.83,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Other in the public sector',26717.24,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Do not know',0,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Hospital',136350.73,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Other in private sector',0,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Spiritual healer''s workplace/church',4964.87,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Health facility provided by employer',46362.11,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Traditional healer',9440.9,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Private doctor/specialist',621672.37,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Unspecified',4209.95,'North West'),
('level1','ZA_1_007',2009,'country','ZA','Pharmacy/chemist',8186.34,'North West'),
('level1','ZA_1_006',2009,'country','ZA','Clinic',920251.23,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Other in the public sector',17364.92,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Pharmacy/chemist',4033.11,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Traditional healer',14233.98,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Do not know',0,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Hospital',53363.2,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Private doctor/specialist',210394.5,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Health facility provided by employer',4645.82,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Other in private sector',2406.61,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Unspecified',1858.76,'Northern Cape'),
('level1','ZA_1_006',2009,'country','ZA','Spiritual healer''s workplace/church',1242.27,'Northern Cape'),
('country','ZA',2009,'continent','AFR','Do not know',31765.94,'South Africa'),
('country','ZA',2009,'continent','AFR','Unspecified',128739.97,'South Africa'),
('country','ZA',2009,'continent','AFR','Spiritual healer''s workplace/church',60465.48,'South Africa'),
('country','ZA',2009,'continent','AFR','Other in private sector',13984.78,'South Africa'),
('country','ZA',2009,'continent','AFR','Other in the public sector',274684.15,'South Africa'),
('country','ZA',2009,'continent','AFR','Health facility provided by employer',62344.01,'South Africa'),
('country','ZA',2009,'continent','AFR','Pharmacy/chemist',154609.97,'South Africa'),
('country','ZA',2009,'continent','AFR','Hospital',4053179.46,'South Africa'),
('country','ZA',2009,'continent','AFR','Traditional healer',362609.18,'South Africa'),
('country','ZA',2009,'continent','AFR','Clinic',40582638.37,'South Africa'),
('country','ZA',2009,'continent','AFR','Private doctor/specialist',11732789.7,'South Africa'),
('level1','ZA_1_008',2009,'country','ZA','Unspecified',7843.57,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Hospital',1022530.87,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Clinic',3230894.9,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Private doctor/specialist',2313042.18,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Traditional healer',35394.25,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Do not know',5513.8,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Spiritual healer''s workplace/church',712.64,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Pharmacy/chemist',19807.57,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Health facility provided by employer',1729.75,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Other in private sector',0,'Western Cape'),
('level1','ZA_1_008',2009,'country','ZA','Other in the public sector',12791.49,'Western Cape');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('level1','ZA','allHealthFacilityVisiteds','"General Household Survey, 2018"','https://open.africa/dataset/general-household-survey-2018/resource/0311975d-df1f-4cf8-a744-dabd53634cd7') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allHealthFacilityVisiteds','"General Household Survey, 2018"','https://open.africa/dataset/general-household-survey-2018/resource/0311975d-df1f-4cf8-a744-dabd53634cd7') on conflict do nothing;
