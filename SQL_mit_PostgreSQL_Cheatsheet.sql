/*
 * Author: (C) 2023 Samuel Lenk
 * Course: SQL with PostgreSQL
 * Purpose: Cheatsheet
 * Web: https://linux-trainings.de
 */

--DATABASE
create database pet_hotel;
drop database pet_hotel;

--TABLES
create table pet_types(
    id  		integer not null primary key,
    pet_type    varchar not null
);
drop table pet_types;

--INSERT DATA
insert into pet_types values(1, 'Bird');
insert into owners(id, first_name, last_name, phone) 
values(3, 'Nancy', 'Simpson', '(489) 591-0408');
insert into pets(id, pet_type_id, owner_id, pet_name) 
values (9, 1, 4, 'Chirp'),
       (10, 2, 5, 'Iau'),
       (11, 3, 6, 'Rrr'); 

--QUERY DATA
select * from pet_types;
select pet_name, birth_date from pets;
select pet_name as "Pet Name", 
       birth_date as Birthday
from pets;

--WHERE condition
select owner_id, pet_name, pet_type_id from pets 
where pet_type_id <> 2;
select * from pets
where owner_id = 3 and pet_type = 'Bird';

--NULL values
select * from pets where birth_date is null;
select * from owners where email is not null;

--ORDER BY
select * from pets order by pet_name;
select * from pets order by pet_name asc;
select * from pets order by pet_name desc;
select * from pets order by birth_date asc nulls first;
select owner_id, pet_name from pets order by owner_id asc, pet_name asc;

--LIMIT & OFFSET
select * from pets limit 3;
select * from pets limit 10 offset 20;

--Numeric Datatypes
create table numeric_data (
    int_column int,
    numeric_column numeric(8,2)
);

--Character Datatypes
create table character_data (
    char_column char,
    varchar_column varchar,
    text_column text
);

--Date & Time Datatypes
create table date_time_data (
    date_column date,
    time_column time,
    interval_column interval,
    timestamp_column timestamptz
);

--Boolean Datatype
create table boolean_data (
    boolean_column bool
);

--Remove rows
delete from employee where id > 23;
delete from employee;
truncate table employee;

--Modify things
alter table employee add column department_id int;
alter table department add primary key (id);
alter table employee alter column department_id set not null;
alter table employee add constraint fk_department_id foreign key (department_id) references department(id);

--UPDATE data
update employee set department_id = 1 where id = 1;
update employee set department_id = 6 where job_title like 'Human Resources%';

--CHECK Constraint
alter table customer add constraint check_premium_active 
check ((active and premium)
	or (active and not premium)
	or (not active and not premium));

--DEFAULT Constraint
create table customer (
	id int not null generated by default as identity,
	country text default 'US'
);

--NOT NULL Constraint
create table customer (
	first_name varchar not null,
	last_name varchar
);

--UNIQUE Constraint
alter table customer add constraint unique_customer_email unique (email);

--PRIMARY KEY Constraint
create table orders (
	id integer not null primary key,
	...
    customer_id integer not null
);

--FOREIGN KEY Constraint
alter table orders
add constraint fk_customer_id foreign key (customer_id) references customer(id)
on update cascade 
on delete restrict;

--Arithmetic Operators
--+, -, *, /, %, ^, @
select 9 + 4 as out_put;
select 9.0 / 4.0 as out_put;
select 9 % 4 as out_put;
select 9 ^ 4 as out_put;

--Comparison Operators
--<, >, <=, >=, =, <>, !=
select * from film where length > 180;
select * from film where length <> 180;
select * from film where length != 180;

--Logical Operators
select * from film where length > 180 and rating = 'PG';
select * from film where length > 180 and (rating = 'PG' or rating = 'G');
select * from film where length > 180 and rating in ('PG', 'G');
select * from film where length > 180 and rating not in ('PG', 'G');

--String Functions
select concat(first_name, ' ', last_name) as full_name from customer;
select substring(email, 5,) from customer;
select length(last_name) from customer;
select trim(first_name) from customer;
select lower(first_name) from customer;
select replace(first_name, 'A','_') from customer;
select left(first_name, 12) from customer;
select * from customer where first_name like 'F%';
select * from customer where first_name like '___';

--Formatting & Conversion Functions
select to_char(current_timestamp, 'yyyy-mm-dd');
select to_date('05 Dec 2000', 'DD Mon YYYY');
select to_number('12.454,8-', '9999G999D9S');
select to_timestamp('05 Dec 2000', 'DD Mon YYYY');
select format('%s, %s',last_name, first_name) as fullname from customer order by fullname;
select cast('123.456' as float8);

--Aggregate Functions
select count(*) from payment;
select min(amount) from payment;
select max(amount) from payment;
select sum(amount) from payment where amount > 10;
select avg(amount) from payment;
select distinct(amount) from payment order by 1;

-- GROUP BY
select amount, count(amount) as amount_count from payment
group by amount
order by amount_count desc;

-- GROUP BY + HAVING
select amount, count(*) as amount_count 
from payment 
group by amount
having count(*) > 1000
order by amount_count desc;

--Date & Time Functions
select age(now(), timestamp '2003-04-24');
select current_date; 
select localtime; -- don't use current_time
select current_timestamp; -- with timezone
select localtimestamp; -- without timezone
select date_part('year', now()); 
select now(), date_trunc('hour', now()) as current_hour; 

--Mathematical Functions
select abs(-5.5);
select power(5,3) as pwr;
select random();
select round(155555.033534235, 3);
select ceiling(155555.033534235);
select floor(155555.033534235);
select trunc(155555.033534235, 3);

--Conditional Functions
select coalesce(null, '1000-01-01') as birthdate;
select nullif(amount, '0.99') from payment;
select count(film_id) as units,
	case
		when count(film_id) <= 1 then 'check'
		when count(film_id) >= 5 then 'excess'
		else 'normal'
	end as inventory_rating
from inventory
group by film_id
order by units desc;

--CROSS JOIN
select e.id, d.id
from employee e
cross join department d;

--INNER JOIN
select e.id, d.id
from employee e
inner join department d on e.department_id = d.id;

--LEFT JOIN
select e.id, d.id
from employee e
left join department d on e.department_id = d.id;

--RIGHT JOIN
select e.id, d.id
from employee e
right join department d on e.department_id = d.id;

--FULL JOIN
select e.id, d.id
from employee e
full join department d on e.department_id = d.id;

--Subquery
select * from payment where amount = (
	select max(amount) from payment
);

--Subquery EXISTS
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

--Subquery IN
select film_id,
	title
from film
where film_id in (
		select film_id
		from rental r
		inner join inventory i using(inventory_id)
		where return_date >= '2022-05-29' and return_date <= '2022-05-30'
)
order by film_id asc;

--ROLE
create role joe login password '1234';
drop role joe;

--GRANT
grant select on candidates to joe;
grant insert, update, delete on candidates to joe;
grant all on all tables in schema public to joe;

--REVOKE
revoke all on candidates from joe;
revoke all on all tables in schema public from joe;

--VIEW
create or replace view staff_list
as select ...
   from staff s
     join address a on s.address_id = a.address_id;
drop view staff_list;