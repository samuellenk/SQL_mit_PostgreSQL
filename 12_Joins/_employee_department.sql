/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: prepare existing tables for the join examples
 */

-- we loosen the relation between employee and department a bit
alter table employee alter column department_id drop not null;

-- insert an employee without department
insert into employee values
(1112, 'Dummy', 'Staff', 'dummy@company.org', '+123456789', '1900-01-01', '2022-12-22 17:58:35.303', 
'Whatever Department Staff', 99.12, null, true, null, null);

-- insert a separtment without employee
insert into department values ('Sunshine Department', 999);

--check the two tables
select e.id, e.first_name, e.last_name, e.department_id from employee e order by e.id;
select d.id, d.name from department d order by d.id;

-- here we start using table references as well
-- makes it easier to write the following queries
-- we will use 2 tables in all examples, but you can join more of course (-;

