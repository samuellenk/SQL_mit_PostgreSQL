/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: Views in SQL
 */

-- we are going to work with this VIEW
select * from staff_list;

-- what's the difference to this table:
select * from staff;

-- and what is a VIEW at all?
-- basically a VIEW is a persisted query
-- in this case it is the following query:
create or replace view staff_list
as select s.staff_id as id,
    (s.first_name || ' '::text) || s.last_name as name,
    a.address,
    a.postal_code as "zip code",
    a.phone,
    city.city,
    country.country,
    s.store_id as sid
   from staff s
     join address a on s.address_id = a.address_id
     join city on a.city_id = city.city_id
     join country on city.country_id = country.country_id; 

-- for querying they can be seen like tables
-- good way also to hide table structure and hence better for future change

select name, address, city, phone from staff_list sl where id = 1;
