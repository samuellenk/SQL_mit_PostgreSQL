/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: some useful aggregate functions
 */

-- we will use the payment table from the pagila project
select * from payment;
	
-- COUNT
select count(*) from payment;

-- MIN
select min(amount) from payment;

-- MAX
select max(amount) from payment;

-- SUM
select sum(amount) from payment where amount > 10;
select sum(amount) from payment where amount <= 10;

-- AVG
select avg(amount) from payment;

-- DISTINCT
select distinct(amount) as distinct_amount from payment order by distinct_amount asc;

-- first thought, but would not work:
-- select amount, count(amount) from payment;

-- instead build GROUP BY query:
select amount, 
	count(amount) as amount_count 
from payment
group by amount
order by amount_count desc
;

-- GROUP BY + HAVING
select amount, count(*) as amount_count 
from payment
--
group by amount
having count(*) > 1000
order by amount_count desc
;

-- 
-- GROUP BY EXERCISE: How many copies of each film do we have in store 1?
-- (Hint: use the inventory table)
--

-- suggested solution
select film_id, 
	count(*) as film_count
from inventory
where store_id = 1
group by film_id
-- order by film_id asc
;

