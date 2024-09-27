/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: show integer & decimal data-types
 */

-- show a table for integer & decimal columns
select id, -- "integer" with auto-increment 
	salary, -- "numeric" with precision 8 and scale 2 (without scale = effectivly an integer)
	round(salary, 0) as rounded_salary
from employee
order by rounded_salary desc
;

-- insert some other rows into our table
insert into employee values
(999,'Dummy','Staff','dummy@company.org','+123456789','1900-01-01',now(),'Dummy Staff',999999.12,null,true,null); 
-- still all fine
insert into employee values
(998,'Dummy','Staff','dummy@company.org','+123456789','1900-01-01',now(),'Dummy Staff',155911.4321,null,true,null); 
-- part of the scale gets lost

-- tricky ones here
insert into employee values 
(997,'Dummy','Staff','dummy@company.org','+123456789','1900-01-01',now(),'Dummy Staff',100000.9999,null,true,null); 
-- will work?
insert into employee values 
(2147483647,'Dummy','Staff','dummy@company.org','+123456789','1900-01-01',now(),'Dummy Staff',123456.789,null,true,null);
-- ouch!!

-- be careful when comparing floating points
select 1.000000000000000000000000000000000000001 = 1.000000000000000000000000000000000000000 as areSame;

