/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: changing the employee table
 */

-- let's recall what's in our employee now
select * from employee;

-- here we add the new column
alter table employee add column department_id int;

-- now look at the changed table
select id, job_title, department_id from employee;

-- and before the update we create a "clean" department reference table
select distinct(department_name) as name, department_id as id from title_department;
-- now we use this query to create the department reference table
create table department as select distinct(department_name) as name, department_id as id from title_department;

-- now we add a primary key
alter table department add primary key (id);

-- verify the result
select * from department;

