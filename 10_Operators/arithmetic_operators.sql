/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: overview for basic / arithmetic operators
 */

-- addition: +
select 9 + 4 as out_put;

-- subtraction: -
select 9 - 4 as out_put;

-- multiplication: *
select 9 * 4 as out_put; -- not the same here as "select * from table"

-- division: /
select 9 / 4 as out_put; -- be careful with integer division
select 9.0 / 4.0 as out_put; -- observe the different result

-- division remainder: %
select 9 % 4 as out_put;

-- power: ^
select 9 ^ 4 as out_put;

-- lets see some of them in action

-- how long ago were the 5 most recent rentals?
select rental_date,
	now() - rental_date as rented_long_ago -- interval
from rental
order by rental_date desc
limit 5;

-- what was the tax amount for the 5 most recent payments?
select payment_id,
	rental_id,
	amount,
	round(amount * 0.19, 2) as tax_amount
from payment
order by payment_date desc
limit 5;

