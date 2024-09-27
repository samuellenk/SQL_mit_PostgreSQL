/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: right join demo
 */

-- right join = get values existing in both tables + those only existing in right table
select
	e.id,
	e.first_name,
	e.last_name,
	d.id,
	d.name
from employee e
right join department d 
on e.department_id = d.id;

-- slightly different way to write this 
select
	e.id,
	e.first_name,
	e.last_name,
	d.id,
	d.name
from employee e
right outer join department d 
on e.department_id = d.id;

-- now we get the un-related department, because it comes from the "right" table

