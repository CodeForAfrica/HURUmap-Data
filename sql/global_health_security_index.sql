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
	variable TEXT,
	value NUMERIC
);

INSERT INTO public.global_health_security_index VALUES
('country','ZA',2009,'continent','AFR','Rank',34),
('country','ZA',2009,'continent','AFR','Overall Score',54.8),
('country','ZA',2009,'continent','AFR','Prevention of the Emergence or Release of Pathogens',44.8),
('country','ZA',2009,'continent','AFR','Early Detection & Reporting for Epidemics of Potential International Concern',81.5),
('country','ZA',2009,'continent','AFR','Rapid Response to And Mitigation of The Spread of an Epidemic',57.7),
('country','ZA',2009,'continent','AFR','Sufficient & Robust Health System to Treat The Sick & Protect Health Workers',33),
('country','ZA',2009,'continent','AFR','"Commitments to Improving National Capacity, Financing and Adherence to Norms"',46.3),
('country','ZA',2009,'continent','AFR','Overall Risk Environment And Country Vulnerability to Biological Threats',61.8),
('country','KE',2009,'continent','AFR','Rank',55),
('country','KE',2009,'continent','AFR','Overall Score',47.1),
('country','KE',2009,'continent','AFR','Prevention of the Emergence or Release of Pathogens',45.9),
('country','KE',2009,'continent','AFR','Early Detection & Reporting for Epidemics of Potential International Concern',68.6),
('country','KE',2009,'continent','AFR','Rapid Response to And Mitigation of The Spread of an Epidemic',37.1),
('country','KE',2009,'continent','AFR','Sufficient & Robust Health System to Treat The Sick & Protect Health Workers',20.7),
('country','KE',2009,'continent','AFR','"Commitments to Improving National Capacity, Financing and Adherence to Norms"',67.1),
('country','KE',2009,'continent','AFR','Overall Risk Environment And Country Vulnerability to Biological Threats',40.7),
('country','GH',2009,'continent','AFR','Rank',105),
('country','GH',2009,'continent','AFR','Overall Score',35.5),
('country','GH',2009,'continent','AFR','Prevention of the Emergence or Release of Pathogens',32.2),
('country','GH',2009,'continent','AFR','Early Detection & Reporting for Epidemics of Potential International Concern',40.5),
('country','GH',2009,'continent','AFR','Rapid Response to And Mitigation of The Spread of an Epidemic',31.5),
('country','GH',2009,'continent','AFR','Sufficient & Robust Health System to Treat The Sick & Protect Health Workers',23.4),
('country','GH',2009,'continent','AFR','"Commitments to Improving National Capacity, Financing and Adherence to Norms"',38),
('country','GH',2009,'continent','AFR','Overall Risk Environment And Country Vulnerability to Biological Threats',51),
('country','ET',2009,'continent','AFR','Rank',84),
('country','ET',2009,'continent','AFR','Overall Score',40.6),
('country','ET',2009,'continent','AFR','Prevention of the Emergence or Release of Pathogens',36.8),
('country','ET',2009,'continent','AFR','Early Detection & Reporting for Epidemics of Potential International Concern',33.7),
('country','ET',2009,'continent','AFR','Rapid Response to And Mitigation of The Spread of an Epidemic',44.7),
('country','ET',2009,'continent','AFR','Sufficient & Robust Health System to Treat The Sick & Protect Health Workers',29),
('country','ET',2009,'continent','AFR','"Commitments to Improving National Capacity, Financing and Adherence to Norms"',65.8),
('country','ET',2009,'continent','AFR','Overall Risk Environment And Country Vulnerability to Biological Threats',33.6),
('country','NG',2009,'continent','AFR','Rank',96),
('country','NG',2009,'continent','AFR','Overall Score',37.8),
('country','NG',2009,'continent','AFR','Prevention of the Emergence or Release of Pathogens',26.3),
('country','NG',2009,'continent','AFR','Early Detection & Reporting for Epidemics of Potential International Concern',44.6),
('country','NG',2009,'continent','AFR','Rapid Response to And Mitigation of The Spread of an Epidemic',43.8),
('country','NG',2009,'continent','AFR','Sufficient & Robust Health System to Treat The Sick & Protect Health Workers',19.9),
('country','NG',2009,'continent','AFR','"Commitments to Improving National Capacity, Financing and Adherence to Norms"',56.7),
('country','NG',2009,'continent','AFR','Overall Risk Environment And Country Vulnerability to Biological Threats',33.7);
      
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ZA','allGlobalHealthSecurityIndices','"Global Health Security Index, 2019"','https://open.africa/dataset/global-health-security-index-2019') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','KE','allGlobalHealthSecurityIndices','"Global Health Security Index, 2019"','https://open.africa/dataset/kenya-global-health-security-index-2019/resource/40867c01-f222-4dbf-be0d-4d00940ebf0e') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','GH','allGlobalHealthSecurityIndices','"Global Health Security Index, 2019"','https://open.africa/dataset/global-health-security-index-2019') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','ET','allGlobalHealthSecurityIndices','"Global Health Security Index, 2019"','https://open.africa/dataset/global-health-security-index-2019') on conflict do nothing;
INSERT into public.sources(geo_level, country_code, table_name, source_title, source_link) VALUES('country','NG','allGlobalHealthSecurityIndices','"Global Health Security Index, 2019"','https://open.africa/dataset/global-health-security-index-2019') on conflict do nothing;
