/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: some useful conditional expressions
 */

-- we will use the inventory table from the pagila project
select * from inventory where store_id = 2;

-- case
select film_id,
	count(*) as units,
	case
		when count(*) <= 1 then 'check'
		when count(*) >= 5 then 'excess'
		else 'normal'
	end as inventory_rating
from inventory
where store_id = 2
group by film_id
order by units desc;

-- coalesce = if NULL is found, the second value is returned
select coalesce('2002-04-12', '1000-01-01');
select coalesce(null, '1000-01-01') as birthdate;

-- coalesce example with film table:
select film_id, original_language_id, language_id from film;
select film_id, coalesce(original_language_id, language_id) as coalesced, language_id from film;

-- nullif = return null when condition is met
select payment_id, customer_id, rental_id, amount, amount from payment where amount < 2.0;
select payment_id, customer_id, rental_id, amount, nullif(amount, '0.99') as amount from payment where amount < 2.0;

