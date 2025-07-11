/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: Sub-Query with EXISTS in WHERE clause
 */

-- tables involved
select * from customer;
select * from payment;

-- sub-query with EXISTS
-- task: get names of all customers who payment greater than 11 
select customer_id,
	first_name, 
	last_name
from customer c
where exists (
	select p.customer_id
	from payment p
	where c.customer_id = p.customer_id
	and amount > 11
);

