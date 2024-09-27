/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: Sub-Query with IN in WHERE clause
 */

-- tables involved
select * from film;
select * from rental;
select * from inventory;

-- sub-query with IN
-- task: get all film titles that where return_date between '2022-05-29' and '2022-05-30' 
select film_id,
	title
from film
where film_id in (
	select film_id
	from inventory
	inner join rental using(inventory_id)
	where return_date >= '2022-05-29' and return_date <= '2022-05-30'
)
order by film_id asc;

