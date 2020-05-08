SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.run_out_of_money_to_buy_food_in_past_12_months DROP CONSTRAINT IF EXISTS pk_run_out_of_money_to_buy_food_in_past_12_months;
DROP TABLE IF EXISTS public.run_out_of_money_to_buy_food_in_past_12_months;
SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE IF NOT EXISTS public.run_out_of_money_to_buy_food_in_past_12_months (
	geo_level TEXT,
	geo_code TEXT,
	geo_version NUMERIC,
	parent_level TEXT,
	parent_code TEXT,
	variable TEXT,
	value NUMERIC,
	name TEXT,
	goe_version NUMERIC
);

ALTER TABLE ONLY public.run_out_of_money_to_buy_food_in_past_12_months ADD CONSTRAINT pk_run_out_of_money_to_buy_food_in_past_12_months PRIMARY KEY (geo_level, geo_code, geo_version, parent_level, parent_code, variable, value, name, goe_version);

INSERT INTO public.run_out_of_money_to_buy_food_in_past_12_months VALUES
 ON CONFLICT DO NOTHING;
