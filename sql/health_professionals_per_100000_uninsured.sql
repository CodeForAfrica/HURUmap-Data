SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.health_professionals_per_100000_uninsured DROP CONSTRAINT IF EXISTS pk_health_professionals_per_100000_uninsured;
DROP TABLE IF EXISTS public.health_professionals_per_100000_uninsured;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.health_professionals_per_100000_uninsured (
	geo_level NUMERIC,
	geo_code NUMERIC,
	geo_version NUMERIC,
	parent_level NUMERIC,
	parent_code NUMERIC,
	zululand NUMERIC,
	za NUMERIC,
	z_f mgcawu NUMERIC,
	xhariep NUMERIC,
	western_cape NUMERIC,
	west_rand NUMERIC,
	west_coast NUMERIC,
	wc NUMERIC,
	waterberg NUMERIC,
	vhembe NUMERIC,
	variable NUMERIC,
	value
district NUMERIC,
	uthukela NUMERIC,
	umzinyathi NUMERIC,
	umkhanyakude NUMERIC,
	umgungundlovu NUMERIC,
	ugu NUMERIC,
	thabo_mofutsanyane NUMERIC,
	student_nurses NUMERIC,
	south_africa NUMERIC,
	sekhukhune NUMERIC,
	sedibeng NUMERIC,
	sarah_baartman NUMERIC,
	radiographers NUMERIC,
	psychologists NUMERIC,
	professional_nurses NUMERIC,
	pixley_ka seme NUMERIC,
	physiotherapists NUMERIC,
	pharmacists NUMERIC,
	overberg NUMERIC,
	occupational_therapists NUMERIC,
	o.r.tambo NUMERIC,
	nw NUMERIC,
	nursing_assistants NUMERIC,
	northern_cape NUMERIC,
	north_west NUMERIC,
	nkangala NUMERIC,
	ngaka_modiri molema NUMERIC,
	nelson_mandela bay NUMERIC,
	nc NUMERIC,
	name NUMERIC,
	namakwa NUMERIC,
	mpumalanga NUMERIC,
	mp NUMERIC,
	mopani NUMERIC,
	medical_specialists NUMERIC,
	medical_researchers NUMERIC,
	medical_practitioners NUMERIC,
	mangaung NUMERIC,
	limpopo NUMERIC,
	lim NUMERIC,
	lejweleputswa NUMERIC,
	kzn NUMERIC,
	kwazulu-natal NUMERIC,
	king_cetshwayo NUMERIC,
	john_taolo gaetsewe NUMERIC,
	joe_gqabi NUMERIC,
	ilembe NUMERIC,
	harry_gwala NUMERIC,
	gt NUMERIC,
	gert_sibande NUMERIC,
	gauteng NUMERIC,
	garden_route NUMERIC,
	fs NUMERIC,
	free_state NUMERIC,
	frances_baard NUMERIC,
	fezile_dabi NUMERIC,
	ethekwini NUMERIC,
	environmental_health practitioners NUMERIC,
	enrolled_nurses NUMERIC,
	ekurhuleni NUMERIC,
	ehlanzeni NUMERIC,
	ec NUMERIC,
	eastern_cape NUMERIC,
	dr_ruth segomotsi mompati NUMERIC,
	dr_kenneth kaunda NUMERIC,
	dental_therapists NUMERIC,
	dental_specialists NUMERIC,
	dental_practitioners NUMERIC,
	country_code NUMERIC,
	clinical_associates NUMERIC,
	city_of tshwane NUMERIC,
	city_of johannesburg NUMERIC,
	city_of cape town NUMERIC,
	chris_hani NUMERIC,
	central_karoo NUMERIC,
	capricorn NUMERIC,
	cape_winelands NUMERIC,
	buffalo_city NUMERIC,
	bojanala NUMERIC,
	amathole NUMERIC,
	amajuba NUMERIC,
	alfred_nzo NUMERIC,
	99.7
district NUMERIC,
	99.2
district NUMERIC,
	97.6
district NUMERIC,
	96.7
district NUMERIC,
	96.6
district NUMERIC,
	95.1
district NUMERIC,
	95
district NUMERIC,
	947 NUMERIC,
	94.3
district NUMERIC,
	936 NUMERIC,
	935 NUMERIC,
	934 NUMERIC,
	933 NUMERIC,
	93.9
district NUMERIC,
	93.4
province NUMERIC,
	93.3
district NUMERIC,
	92.9
district NUMERIC,
	92.4
district NUMERIC,
	90.4
district NUMERIC,
	9.9
district NUMERIC,
	9.7
district NUMERIC,
	9.6
district NUMERIC,
	9.6
country NUMERIC,
	9.4
district NUMERIC,
	9.3
district NUMERIC,
	9
province NUMERIC,
	9
district NUMERIC,
	89.8
district NUMERIC,
	89.7
district NUMERIC,
	88
province NUMERIC,
	85.1
district NUMERIC,
	84.8
district NUMERIC,
	84.6
district NUMERIC,
	84
district NUMERIC,
	832 NUMERIC,
	831 NUMERIC,
	830 NUMERIC,
	83.5
district NUMERIC,
	83.3
province NUMERIC,
	82.6
province NUMERIC,
	82.6
district NUMERIC,
	82.1
district NUMERIC,
	81.6
district NUMERIC,
	81.5
province NUMERIC,
	81.5
district NUMERIC,
	81
district NUMERIC,
	80.6
district NUMERIC,
	8.9
district NUMERIC,
	8.8
district NUMERIC,
	8.7
district NUMERIC,
	8.6
province NUMERIC,
	8.5
district NUMERIC,
	8.4
district NUMERIC,
	8.3
district NUMERIC,
	8.2
district NUMERIC,
	8.1
province NUMERIC,
	8.1
district NUMERIC,
	8
district NUMERIC,
	799 NUMERIC,
	798 NUMERIC,
	797 NUMERIC,
	79.8
province NUMERIC,
	79.5
district NUMERIC,
	79.4
province NUMERIC,
	78.1
province NUMERIC,
	78.1
district NUMERIC,
	78
district NUMERIC,
	75.6
district NUMERIC,
	748 NUMERIC,
	742 NUMERIC,
	74.6
district NUMERIC,
	72.9
district NUMERIC,
	71.6
district NUMERIC,
	71.4
district NUMERIC,
	70.8
district NUMERIC,
	70.4
district NUMERIC,
	70.1
province NUMERIC,
	7.8
district NUMERIC,
	7.6
district NUMERIC,
	7.5
district NUMERIC,
	7.5
country NUMERIC,
	7.1
district NUMERIC,
	69.6
district NUMERIC,
	69.4
district NUMERIC,
	69.2
district NUMERIC,
	69
district NUMERIC,
	68.6
district NUMERIC,
	68.3
province NUMERIC,
	640 NUMERIC,
	64.6
country NUMERIC,
	639 NUMERIC,
	638 NUMERIC,
	637 NUMERIC,
	63.9
district NUMERIC,
	63.2
district NUMERIC,
	63
district NUMERIC,
	62.9
district NUMERIC,
	62.7
district NUMERIC,
	62.6
country NUMERIC,
	62.3
district NUMERIC,
	62.2
district NUMERIC,
	62.1
district NUMERIC,
	62
district NUMERIC,
	60.4
district NUMERIC,
	60.2
district NUMERIC,
	6.9
district NUMERIC,
	6.7
district NUMERIC,
	6.6
province NUMERIC,
	6.6
district NUMERIC,
	6.5
district NUMERIC,
	6.3
district NUMERIC,
	6.2
district NUMERIC,
	6.1
district NUMERIC,
	6
province NUMERIC,
	595 NUMERIC,
	59.2
district NUMERIC,
	58.9
province NUMERIC,
	58.8
province NUMERIC,
	58.3
district NUMERIC,
	58.1
district NUMERIC,
	57.4
district NUMERIC,
	56.2
district NUMERIC,
	55.4
district NUMERIC,
	543 NUMERIC,
	54.7
district NUMERIC,
	54.2
district NUMERIC,
	53.1
district NUMERIC,
	529 NUMERIC,
	528 NUMERIC,
	527 NUMERIC,
	526 NUMERIC,
	525 NUMERIC,
	524 NUMERIC,
	523 NUMERIC,
	522 NUMERIC,
	521 NUMERIC,
	52.7
district NUMERIC,
	52.3
district NUMERIC,
	50.8
district NUMERIC,
	50.3
province NUMERIC,
	50
district NUMERIC,
	5.9
province NUMERIC,
	5.9
district NUMERIC,
	5.8
province NUMERIC,
	5.8
district NUMERIC,
	5.8
country NUMERIC,
	5.7
district NUMERIC,
	5.6
district NUMERIC,
	5.5
district NUMERIC,
	5.4
district NUMERIC,
	5.3
province NUMERIC,
	5.2
district NUMERIC,
	5
province NUMERIC,
	5
district NUMERIC,
	4940 NUMERIC,
	49.4
province NUMERIC,
	48.9
district NUMERIC,
	48.7
district NUMERIC,
	48.2
district NUMERIC,
	46.9
district NUMERIC,
	46.5
district NUMERIC,
	46.3
district NUMERIC,
	46.2
province NUMERIC,
	45.8
district NUMERIC,
	45.7
district NUMERIC,
	45.5
district NUMERIC,
	45.4
district NUMERIC,
	45.1
district NUMERIC,
	44.7
district NUMERIC,
	44.1
district NUMERIC,
	43.8
district NUMERIC,
	43.7
district NUMERIC,
	43
district NUMERIC,
	420 NUMERIC,
	42.2
district NUMERIC,
	419 NUMERIC,
	418 NUMERIC,
	416 NUMERIC,
	40.9
province NUMERIC,
	40.7
district NUMERIC,
	40.4
district NUMERIC,
	40.1
district NUMERIC,
	4.9
district NUMERIC,
	4.8
district NUMERIC,
	4.7
district NUMERIC,
	4.5
district NUMERIC,
	4.4
district NUMERIC,
	4.3
district NUMERIC,
	4.2
district NUMERIC,
	4.1
district NUMERIC,
	4
province NUMERIC,
	4
district NUMERIC,
	39.9
district NUMERIC,
	39.4
district NUMERIC,
	39
province NUMERIC,
	38.9
district NUMERIC,
	38.3
province NUMERIC,
	37.8
district NUMERIC,
	37.7
district NUMERIC,
	37.4
district NUMERIC,
	37
district NUMERIC,
	36.7
province NUMERIC,
	36.4
district NUMERIC,
	35.8
district NUMERIC,
	35.1
province NUMERIC,
	35
district NUMERIC,
	345 NUMERIC,
	34.8
district NUMERIC,
	33.7
district NUMERIC,
	33.6
province NUMERIC,
	33.1
district NUMERIC,
	32.9
district NUMERIC,
	32.4
district NUMERIC,
	32.3
district NUMERIC,
	32
district NUMERIC,
	31.6
country NUMERIC,
	31.1
district NUMERIC,
	309 NUMERIC,
	308 NUMERIC,
	307 NUMERIC,
	306 NUMERIC,
	30.9
district NUMERIC,
	30.8
district NUMERIC,
	30.7
province NUMERIC,
	30.5
district NUMERIC,
	30.4
district NUMERIC,
	30
district NUMERIC,
	3.9
district NUMERIC,
	3.8
province NUMERIC,
	3.8
district NUMERIC,
	3.7
district NUMERIC,
	3.6
province NUMERIC,
	3.6
district NUMERIC,
	3.5
province NUMERIC,
	3.5
district NUMERIC,
	3.4
province NUMERIC,
	3.4
district NUMERIC,
	3.3
province NUMERIC,
	3.3
district NUMERIC,
	3.2
province NUMERIC,
	3.2
district NUMERIC,
	3.1
province NUMERIC,
	3.1
district NUMERIC,
	3
province NUMERIC,
	3
district NUMERIC,
	3
country NUMERIC,
	2930 NUMERIC,
	292 NUMERIC,
	28
district NUMERIC,
	27.7
district NUMERIC,
	27.5
province NUMERIC,
	27.4
province NUMERIC,
	26.5
district NUMERIC,
	26.4
district NUMERIC,
	26.3
district NUMERIC,
	26.1
district NUMERIC,
	254.2 NUMERIC,
	25.9
province NUMERIC,
	25.8
province NUMERIC,
	25.6
district NUMERIC,
	25
district NUMERIC,
	246.1
district NUMERIC,
	244 NUMERIC,
	24.5
province NUMERIC,
	23.6
province NUMERIC,
	23.5
district NUMERIC,
	23.4
district NUMERIC,
	23
district NUMERIC,
	22.9
district NUMERIC,
	22.8
province NUMERIC,
	22.5
district NUMERIC,
	22.4
district NUMERIC,
	22.3
district NUMERIC,
	22
district NUMERIC,
	215 NUMERIC,
	214 NUMERIC,
	213 NUMERIC,
	212 NUMERIC,
	210 NUMERIC,
	21.7
district NUMERIC,
	21.6
district NUMERIC,
	21.4
district NUMERIC,
	21.3
district NUMERIC,
	21
district NUMERIC,
	20.8
district NUMERIC,
	20.6
province NUMERIC,
	20.1
district NUMERIC,
	2.9
province NUMERIC,
	2.9
district NUMERIC,
	2.8
district NUMERIC,
	2.7
province NUMERIC,
	2.7
district NUMERIC,
	2.6
province NUMERIC,
	2.6
district NUMERIC,
	2.6
country NUMERIC,
	2.5
province NUMERIC,
	2.5
district NUMERIC,
	2.5
country NUMERIC,
	2.4
province NUMERIC,
	2.4
district NUMERIC,
	2.3
province NUMERIC,
	2.3
district NUMERIC,
	2.2
province NUMERIC,
	2.2
district NUMERIC,
	2.1
province NUMERIC,
	2.1
district NUMERIC,
	2
province NUMERIC,
	2
district NUMERIC,
	198.3
district NUMERIC,
	193.2
district NUMERIC,
	192.1
district NUMERIC,
	1910 NUMERIC,
	19.8
district NUMERIC,
	19.7
district NUMERIC,
	19.2
district NUMERIC,
	19
district NUMERIC,
	183.7
district NUMERIC,
	182.4
district NUMERIC,
	181.8
district NUMERIC,
	18.9
district NUMERIC,
	18.8
province NUMERIC,
	18.3
district NUMERIC,
	18.2
district NUMERIC,
	176.3
district NUMERIC,
	175
district NUMERIC,
	174
district NUMERIC,
	173.7
district NUMERIC,
	172.3
district NUMERIC,
	172.1
district NUMERIC,
	170.9
district NUMERIC,
	17.9
district NUMERIC,
	17.8
district NUMERIC,
	17.3
district NUMERIC,
	17.2
province NUMERIC,
	17.2
district NUMERIC,
	17.1
province NUMERIC,
	169
province NUMERIC,
	168.5
district NUMERIC,
	168.4
province NUMERIC,
	165.2
district NUMERIC,
	164.6
province NUMERIC,
	163.5
district NUMERIC,
	162.2
district NUMERIC,
	161.2
district NUMERIC,
	16.7
district NUMERIC,
	16.4
district NUMERIC,
	16.3
district NUMERIC,
	158.2
district NUMERIC,
	154
district NUMERIC,
	153.8
district NUMERIC,
	153.5
district NUMERIC,
	15.9
district NUMERIC,
	15.5
district NUMERIC,
	15.3
district NUMERIC,
	15.2
district NUMERIC,
	147.6
district NUMERIC,
	147
district NUMERIC,
	145.3
province NUMERIC,
	144.8
district NUMERIC,
	142.1
country NUMERIC,
	141.5
province NUMERIC,
	14.8
district NUMERIC,
	14.6
district NUMERIC,
	14.5
province NUMERIC,
	14.3
district NUMERIC,
	14
district NUMERIC,
	136
district NUMERIC,
	135.1
province NUMERIC,
	134.8
district NUMERIC,
	133.1
district NUMERIC,
	131.6
district NUMERIC,
	131.5
province NUMERIC,
	130.6
district NUMERIC,
	13.9
district NUMERIC,
	13.8
province NUMERIC,
	13.8
district NUMERIC,
	13.7
district NUMERIC,
	13.1
district NUMERIC,
	13
district NUMERIC,
	127.7
district NUMERIC,
	125.2
district NUMERIC,
	123.5
district NUMERIC,
	12.9
province NUMERIC,
	12.8
district NUMERIC,
	12.5
district NUMERIC,
	12.3
province NUMERIC,
	12.1
district NUMERIC,
	119.5
district NUMERIC,
	119
district NUMERIC,
	118.6
district NUMERIC,
	116.9
district NUMERIC,
	116.2
district NUMERIC,
	115.7
district NUMERIC,
	114.9
district NUMERIC,
	111.8
district NUMERIC,
	110.1
district NUMERIC,
	11.9
district NUMERIC,
	11.8
district NUMERIC,
	11.6
district NUMERIC,
	11.6
country NUMERIC,
	11.4
district NUMERIC,
	11.1
province NUMERIC,
	11
district NUMERIC,
	106.3
district NUMERIC,
	105 NUMERIC,
	104.4
district NUMERIC,
	104 NUMERIC,
	103.2
district NUMERIC,
	103 NUMERIC,
	102 NUMERIC,
	101.4
province NUMERIC,
	101 NUMERIC,
	100
district NUMERIC,
	10.9
district NUMERIC,
	10.8
province NUMERIC,
	10.8
district NUMERIC,
	10.7
district NUMERIC,
	10.4
district NUMERIC,
	10.3
district NUMERIC,
	10.2
district NUMERIC,
	1.9
province NUMERIC,
	1.9
district NUMERIC,
	1.8
province NUMERIC,
	1.8
district NUMERIC,
	1.7
province NUMERIC,
	1.7
district NUMERIC,
	1.6
district NUMERIC,
	1.5
province NUMERIC,
	1.5
district NUMERIC,
	1.4
district NUMERIC,
	1.4
country NUMERIC,
	1.3
province NUMERIC,
	1.3
district NUMERIC,
	1.2
province NUMERIC,
	1.2
district NUMERIC,
	1.1
province NUMERIC,
	1.1
district NUMERIC,
	1
province NUMERIC,
	1
district NUMERIC,
	1
country NUMERIC,
	0.9
province NUMERIC,
	0.9
district NUMERIC,
	0.8
province NUMERIC,
	0.8
district NUMERIC,
	0.8
country NUMERIC,
	0.7
province NUMERIC,
	0.7
district NUMERIC,
	0.7
country NUMERIC,
	0.6
province NUMERIC,
	0.6
district NUMERIC,
	0.5
district NUMERIC,
	0.4
province NUMERIC,
	0.4
district NUMERIC,
	0.3
province NUMERIC,
	0.3
district NUMERIC,
	0.3
country NUMERIC,
	0.2
province NUMERIC,
	0.2
district NUMERIC,
	0.1
province NUMERIC,
	0.1
district NUMERIC,
	0.1
country NUMERIC,
	0
province NUMERIC,
	0
district NUMERIC,
	 NUMERIC
);

ALTER TABLE ONLY public.health_professionals_per_100000_uninsured ADD CONSTRAINT pk_health_professionals_per_100000_uninsured PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, zululand, za, z_f mgcawu, xhariep, western_cape, west_rand, west_coast, wc, waterberg, vhembe, variable, value
district, uthukela, umzinyathi, umkhanyakude, umgungundlovu, ugu, thabo_mofutsanyane, student_nurses, south_africa, sekhukhune, sedibeng, sarah_baartman, radiographers, psychologists, professional_nurses, pixley_ka seme, physiotherapists, pharmacists, overberg, occupational_therapists, o.r.tambo, nw, nursing_assistants, northern_cape, north_west, nkangala, ngaka_modiri molema, nelson_mandela bay, nc, name, namakwa, mpumalanga, mp, mopani, medical_specialists, medical_researchers, medical_practitioners, mangaung, limpopo, lim, lejweleputswa, kzn, kwazulu-natal, king_cetshwayo, john_taolo gaetsewe, joe_gqabi, ilembe, harry_gwala, gt, gert_sibande, gauteng, garden_route, fs, free_state, frances_baard, fezile_dabi, ethekwini, environmental_health practitioners, enrolled_nurses, ekurhuleni, ehlanzeni, ec, eastern_cape, dr_ruth segomotsi mompati, dr_kenneth kaunda, dental_therapists, dental_specialists, dental_practitioners, country_code, clinical_associates, city_of tshwane, city_of johannesburg, city_of cape town, chris_hani, central_karoo, capricorn, cape_winelands, buffalo_city, bojanala, amathole, amajuba, alfred_nzo, 99.7
district, 99.2
district, 97.6
district, 96.7
district, 96.6
district, 95.1
district, 95
district, 947, 94.3
district, 936, 935, 934, 933, 93.9
district, 93.4
province, 93.3
district, 92.9
district, 92.4
district, 90.4
district, 9.9
district, 9.7
district, 9.6
district, 9.6
country, 9.4
district, 9.3
district, 9
province, 9
district, 89.8
district, 89.7
district, 88
province, 85.1
district, 84.8
district, 84.6
district, 84
district, 832, 831, 830, 83.5
district, 83.3
province, 82.6
province, 82.6
district, 82.1
district, 81.6
district, 81.5
province, 81.5
district, 81
district, 80.6
district, 8.9
district, 8.8
district, 8.7
district, 8.6
province, 8.5
district, 8.4
district, 8.3
district, 8.2
district, 8.1
province, 8.1
district, 8
district, 799, 798, 797, 79.8
province, 79.5
district, 79.4
province, 78.1
province, 78.1
district, 78
district, 75.6
district, 748, 742, 74.6
district, 72.9
district, 71.6
district, 71.4
district, 70.8
district, 70.4
district, 70.1
province, 7.8
district, 7.6
district, 7.5
district, 7.5
country, 7.1
district, 69.6
district, 69.4
district, 69.2
district, 69
district, 68.6
district, 68.3
province, 640, 64.6
country, 639, 638, 637, 63.9
district, 63.2
district, 63
district, 62.9
district, 62.7
district, 62.6
country, 62.3
district, 62.2
district, 62.1
district, 62
district, 60.4
district, 60.2
district, 6.9
district, 6.7
district, 6.6
province, 6.6
district, 6.5
district, 6.3
district, 6.2
district, 6.1
district, 6
province, 595, 59.2
district, 58.9
province, 58.8
province, 58.3
district, 58.1
district, 57.4
district, 56.2
district, 55.4
district, 543, 54.7
district, 54.2
district, 53.1
district, 529, 528, 527, 526, 525, 524, 523, 522, 521, 52.7
district, 52.3
district, 50.8
district, 50.3
province, 50
district, 5.9
province, 5.9
district, 5.8
province, 5.8
district, 5.8
country, 5.7
district, 5.6
district, 5.5
district, 5.4
district, 5.3
province, 5.2
district, 5
province, 5
district, 4940, 49.4
province, 48.9
district, 48.7
district, 48.2
district, 46.9
district, 46.5
district, 46.3
district, 46.2
province, 45.8
district, 45.7
district, 45.5
district, 45.4
district, 45.1
district, 44.7
district, 44.1
district, 43.8
district, 43.7
district, 43
district, 420, 42.2
district, 419, 418, 416, 40.9
province, 40.7
district, 40.4
district, 40.1
district, 4.9
district, 4.8
district, 4.7
district, 4.5
district, 4.4
district, 4.3
district, 4.2
district, 4.1
district, 4
province, 4
district, 39.9
district, 39.4
district, 39
province, 38.9
district, 38.3
province, 37.8
district, 37.7
district, 37.4
district, 37
district, 36.7
province, 36.4
district, 35.8
district, 35.1
province, 35
district, 345, 34.8
district, 33.7
district, 33.6
province, 33.1
district, 32.9
district, 32.4
district, 32.3
district, 32
district, 31.6
country, 31.1
district, 309, 308, 307, 306, 30.9
district, 30.8
district, 30.7
province, 30.5
district, 30.4
district, 30
district, 3.9
district, 3.8
province, 3.8
district, 3.7
district, 3.6
province, 3.6
district, 3.5
province, 3.5
district, 3.4
province, 3.4
district, 3.3
province, 3.3
district, 3.2
province, 3.2
district, 3.1
province, 3.1
district, 3
province, 3
district, 3
country, 2930, 292, 28
district, 27.7
district, 27.5
province, 27.4
province, 26.5
district, 26.4
district, 26.3
district, 26.1
district, 254.2, 25.9
province, 25.8
province, 25.6
district, 25
district, 246.1
district, 244, 24.5
province, 23.6
province, 23.5
district, 23.4
district, 23
district, 22.9
district, 22.8
province, 22.5
district, 22.4
district, 22.3
district, 22
district, 215, 214, 213, 212, 210, 21.7
district, 21.6
district, 21.4
district, 21.3
district, 21
district, 20.8
district, 20.6
province, 20.1
district, 2.9
province, 2.9
district, 2.8
district, 2.7
province, 2.7
district, 2.6
province, 2.6
district, 2.6
country, 2.5
province, 2.5
district, 2.5
country, 2.4
province, 2.4
district, 2.3
province, 2.3
district, 2.2
province, 2.2
district, 2.1
province, 2.1
district, 2
province, 2
district, 198.3
district, 193.2
district, 192.1
district, 1910, 19.8
district, 19.7
district, 19.2
district, 19
district, 183.7
district, 182.4
district, 181.8
district, 18.9
district, 18.8
province, 18.3
district, 18.2
district, 176.3
district, 175
district, 174
district, 173.7
district, 172.3
district, 172.1
district, 170.9
district, 17.9
district, 17.8
district, 17.3
district, 17.2
province, 17.2
district, 17.1
province, 169
province, 168.5
district, 168.4
province, 165.2
district, 164.6
province, 163.5
district, 162.2
district, 161.2
district, 16.7
district, 16.4
district, 16.3
district, 158.2
district, 154
district, 153.8
district, 153.5
district, 15.9
district, 15.5
district, 15.3
district, 15.2
district, 147.6
district, 147
district, 145.3
province, 144.8
district, 142.1
country, 141.5
province, 14.8
district, 14.6
district, 14.5
province, 14.3
district, 14
district, 136
district, 135.1
province, 134.8
district, 133.1
district, 131.6
district, 131.5
province, 130.6
district, 13.9
district, 13.8
province, 13.8
district, 13.7
district, 13.1
district, 13
district, 127.7
district, 125.2
district, 123.5
district, 12.9
province, 12.8
district, 12.5
district, 12.3
province, 12.1
district, 119.5
district, 119
district, 118.6
district, 116.9
district, 116.2
district, 115.7
district, 114.9
district, 111.8
district, 110.1
district, 11.9
district, 11.8
district, 11.6
district, 11.6
country, 11.4
district, 11.1
province, 11
district, 106.3
district, 105, 104.4
district, 104, 103.2
district, 103, 102, 101.4
province, 101, 100
district, 10.9
district, 10.8
province, 10.8
district, 10.7
district, 10.4
district, 10.3
district, 10.2
district, 1.9
province, 1.9
district, 1.8
province, 1.8
district, 1.7
province, 1.7
district, 1.6
district, 1.5
province, 1.5
district, 1.4
district, 1.4
country, 1.3
province, 1.3
district, 1.2
province, 1.2
district, 1.1
province, 1.1
district, 1
province, 1
district, 1
country, 0.9
province, 0.9
district, 0.8
province, 0.8
district, 0.8
country, 0.7
province, 0.7
district, 0.7
country, 0.6
province, 0.6
district, 0.5
district, 0.4
province, 0.4
district, 0.3
province, 0.3
district, 0.3
country, 0.2
province, 0.2
district, 0.1
province, 0.1
district, 0.1
country, 0
province, 0
district, );

INSERT INTO public.health_professionals_per_100000_uninsured VALUES
 ON CONFLICT DO NOTHING;
