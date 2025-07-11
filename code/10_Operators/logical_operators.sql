/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: overview for logical operators
 */

-- AND = several have to be true
select film_id, title, rental_rate, rating, length from film
where rating = 'PG'
and length > 180
order by length desc;

-- OR = either has to be true
select film_id, title, rental_rate, rating, length from film
where (rating = 'PG' or rating = 'G')
and length > 180
order by length desc;

-- NOT = negate whatever follows
-- IN = provide a list of values
select film_id, title, rental_rate, rating, length from film
where rating not in ('G', 'PG')
and length > 180
order by length desc;

