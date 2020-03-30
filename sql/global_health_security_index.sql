SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.global_health_security_index DROP CONSTRAINT IF EXISTS pk_global_health_security_index;
DROP TABLE IF EXISTS public.global_health_security_index;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.global_health_security_index (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	score NUMERIC,
	category TEXT
);

INSERT INTO public.global_health_security_index VALUES
('country','ZA',2009,'continent','AFR',34,'Rank'),
('country','ZA',2009,'continent','AFR',54.8,'Overall Score'),
('country','ZA',2009,'continent','AFR',44.8,'Prevention of the Emergence or Release of Pathogens'),
('country','ZA',2009,'continent','AFR',81.5,'Early Detection & Reporting for Epidemics of Potential International Concern'),
('country','ZA',2009,'continent','AFR',57.7,'Rapid Response to And Mitigation of The Spread of an Epidemic'),
('country','ZA',2009,'continent','AFR',33,'Sufficient & Robust Health System to Treat The Sick & Protect Health Workers'),
('country','ZA',2009,'continent','AFR',46.3,'"Commitments to Improving National Capacity, Financing and Adherence to Norms"'),
('country','ZA',2009,'continent','AFR',61.8,'Overall Risk Environment And Country Vulnerability to Biological Threats'),
('country','KE',2009,'continent','AFR',55,'Rank'),
('country','KE',2009,'continent','AFR',47.1,'Overall Score'),
('country','KE',2009,'continent','AFR',45.9,'Prevention of the Emergence or Release of Pathogens'),
('country','KE',2009,'continent','AFR',68.6,'Early Detection & Reporting for Epidemics of Potential International Concern'),
('country','KE',2009,'continent','AFR',37.1,'Rapid Response to And Mitigation of The Spread of an Epidemic'),
('country','KE',2009,'continent','AFR',20.7,'Sufficient & Robust Health System to Treat The Sick & Protect Health Workers'),
('country','KE',2009,'continent','AFR',67.1,'"Commitments to Improving National Capacity, Financing and Adherence to Norms"'),
('country','KE',2009,'continent','AFR',40.7,'Overall Risk Environment And Country Vulnerability to Biological Threats'),
('country','GH',2009,'continent','AFR',105,'Rank'),
('country','GH',2009,'continent','AFR',35.5,'Overall Score'),
('country','GH',2009,'continent','AFR',32.2,'Prevention of the Emergence or Release of Pathogens'),
('country','GH',2009,'continent','AFR',40.5,'Early Detection & Reporting for Epidemics of Potential International Concern'),
('country','GH',2009,'continent','AFR',31.5,'Rapid Response to And Mitigation of The Spread of an Epidemic'),
('country','GH',2009,'continent','AFR',23.4,'Sufficient & Robust Health System to Treat The Sick & Protect Health Workers'),
('country','GH',2009,'continent','AFR',38,'"Commitments to Improving National Capacity, Financing and Adherence to Norms"'),
('country','GH',2009,'continent','AFR',51,'Overall Risk Environment And Country Vulnerability to Biological Threats'),
('country','ET',2009,'continent','AFR',84,'Rank'),
('country','ET',2009,'continent','AFR',40.6,'Overall Score'),
('country','ET',2009,'continent','AFR',36.8,'Prevention of the Emergence or Release of Pathogens'),
('country','ET',2009,'continent','AFR',33.7,'Early Detection & Reporting for Epidemics of Potential International Concern'),
('country','ET',2009,'continent','AFR',44.7,'Rapid Response to And Mitigation of The Spread of an Epidemic'),
('country','ET',2009,'continent','AFR',29,'Sufficient & Robust Health System to Treat The Sick & Protect Health Workers'),
('country','ET',2009,'continent','AFR',65.8,'"Commitments to Improving National Capacity, Financing and Adherence to Norms"'),
('country','ET',2009,'continent','AFR',33.6,'Overall Risk Environment And Country Vulnerability to Biological Threats');
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allGlobalHealthSecurityIndices','"Global Health Security Index, 2019"','https://open.africa/dataset/global-health-security-index/resource/baa6635f-fbdc-4ccb-9691-af905ac5514a') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','KE','allGlobalHealthSecurityIndices','"Global Health Security Index, 2019"','https://open.africa/dataset/kenya-global-health-security-index-2019/resource/40867c01-f222-4dbf-be0d-4d00940ebf0e') on conflict do nothing;
