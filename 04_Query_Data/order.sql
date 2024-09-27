/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: getting sorted data using ORDER BY
 */

-- get all rows and columns with this command
select * from pets;

-- sort the result with ORDER BY clause
select * from pets order by pet_name; -- takes the "default" order

-- explicitly sort ASC or DESC
select * from pets order by pet_name asc;
select * from pets order by pet_name desc;

-- decide where the NULL values go when sorting
select * from pets order by birth_date asc nulls first; -- OR nulls last

-- order by more than one column
select owner_id, pet_name from pets order by owner_id asc, pet_name asc;

