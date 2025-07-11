/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: Introduction to Sub-Queries
 */

-- sub-query example 1:
-- we use table "payment"
select * from payment;

-- lets imagine we want to get the row with the largest payment(s)
-- we can do two queries in this order
select max(amount) from payment;
select * from payment where amount = 11.99;

-- or we put the 2 queries together -> sub-query
select * from payment where amount = (
	select max(amount) from payment
);

-- sub-query example 2:
-- we use table "film"
select * from film;

select avg(rental_rate) from film;
select film_id, title, rental_rate from film where rental_rate > 2.98;

-- or we put the 2 queries together -> sub-query
select film_id, title, rental_rate from film where rental_rate > (
	select avg(rental_rate) from film
);

