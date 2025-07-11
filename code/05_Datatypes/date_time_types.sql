/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: show temporal data-types
 */

-- show a table for date & time columns 
select id, birth_date, hire_date from employee order by id desc;

-- insert some more data in this table
insert into employee (id, first_name, last_name, email, birth_date, hire_date, salary, active, job_title)
values(6666, 'Deborah', 'James', 'deborah@company.org', '1999-01-08', '2022-12-01', 7000, false, 'Marketing Representative');
insert into employee (id, first_name, last_name, email, birth_date, hire_date, salary, active, job_title)
values(6665, 'Mark', 'Thompson', 'mark@company.org', '20001010', '2018-04-12 04:05:06 America/New_York', 5000, false, 'Accounting Clerk');
insert into employee (id, first_name, last_name, email, birth_date, hire_date, salary, active, job_title)
values(6664, 'John', 'Doe', 'john@company.org', '2002-12-12 12:23:18', now(), 6500, false, 'Sales Assistant');

select id,
	first_name,
	birth_date,
	hire_date,
	age(now(), birth_date) AS age_interval,
	extract(year from age(now(), birth_date)) as "current age", 
	extract(year from hire_date) as start_year 
from employee
order by start_year asc; 

