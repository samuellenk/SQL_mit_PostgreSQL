/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: show boolean data-type
 */

-- show a table with boolean columns
select id, first_name, active from employee order by id asc;

-- get only TRUE/FALSE rows
select id, first_name, active from employee where active = true;
select id, first_name, active from employee where active;
select id, first_name, active from employee where not active;

-- some other boolean values are possible, but not recommended
-- equivalents of TRUE:
insert into employee (id, first_name, last_name, email, birth_date, hire_date, job_title, salary, active)
values (4440, 'Samuel', 'Lenk', 'samuel@lenk.com', '1900-01-01', now(), 'Some Title', 0, 'yes');
insert into employee (id, first_name, last_name, email, birth_date, hire_date, job_title, salary, active)
values (4441, 'Samuel', 'Lenk', 'samuel@lenk.com', '1900-01-01', now(), 'Some Title', 0, 'on');
insert into employee (id, first_name, last_name, email, birth_date, hire_date, job_title, salary, active)
values (4442, 'Samuel', 'Lenk', 'samuel@lenk.com', '1900-01-01', now(), 'Some Title', 0, '1');
-- equivalents of FALSE:
insert into employee (id, first_name, last_name, email, birth_date, hire_date, job_title, salary, active)
values (4443, 'Maria', 'Smith', 'maria@gmail.com', '1900-01-01', now(), 'Some Title', 0, 'no');
insert into employee (id, first_name, last_name, email, birth_date, hire_date, job_title, salary, active)
values (4444, 'Maria', 'Smith', 'maria@gmail.com', '1900-01-01', now(), 'Some Title', 0, 'off');
insert into employee (id, first_name, last_name, email, birth_date, hire_date, job_title, salary, active)
values (4445, 'Maria', 'Smith', 'maria@gmail.com', '1900-01-01', now(), 'Some Title', 0, '0');

