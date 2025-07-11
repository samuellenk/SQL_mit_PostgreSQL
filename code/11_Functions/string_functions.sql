/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: some useful string functions
 */

-- we will use the customer table from the pagila project
select * from customer;

-- || and CONCAT
select first_name || ' ' || last_name as full_name from customer where active = 0;
select concat(first_name, ' ', last_name) as full_name from customer where active = 0;

-- substring
select substring('Hello PostgreSQL', 7, 4);
select substring(email, 0, position('.' in email)) as email_first_name, first_name from customer;

-- length
select length('Hello PostgreSQL');
select first_name, last_name, length(last_name) as len from customer order by len desc;

-- trim
select ' 	What will be the output of this    ?     _					  ';
select trim(' 	What will be the output of this    ?     _					  ');
select regexp_replace(' 	What will be the output of this    ?     _					  ', '[\t ]{2}', '', 'g');

-- upper and lower
select substring(first_name, 1, 1) || substring(lower(first_name), 2) as case_changed from customer;

-- replace
select replace(first_name, 'A','_') from customer;
select regexp_replace(first_name, '[AEIOU]','_', 'g') from customer;

-- right and left
select left(concat(first_name, ' ', last_name), 12) from customer;

-- like
select * from customer where first_name like '%'; -- % = any number of characters
select * from customer where first_name like 'F%'; -- case matters
select * from customer where first_name like '%E_'; -- _ = one character only 
select * from customer where first_name like '___'; -- first_name with given length
-- equivalent with length function
select * from customer where length(first_name) = 3; -- first_name with given length

