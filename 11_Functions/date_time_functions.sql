/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: some useful date & time functions (and operators)
 */

-- functions
select age(now(), timestamp '2003-04-24');

select current_date; 

select localtime; -- don't use current_time

select current_timestamp; -- with timezone
select localtimestamp; -- without timezone

select date_part('year', now()); 

select now(), date_trunc('hour', now()) as current_hour; 

--operators
select date '2022-12-28' + 7 as date_result;

select date '2022-12-28' - date '2022-11-12' as date_result;

--
-- EXERCISE: get rental duration for latest 10 rentals
-- as interval and in days
-- use the rental table
--

-- Query to start with:
select * from rental;

-- Suggested Solution:
select inventory_id,
	rental_date,
	return_date,
	return_date - rental_date as rental_interval,
	date_part('days', return_date - rental_date) as rental_days
from rental
order by rental_date desc
limit 10;

