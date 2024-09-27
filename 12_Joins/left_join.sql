/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: left join demo
 */

-- left join = get values existing in both tables + those only existing in left table
select
	e.id,
	e.first_name,
	e.last_name,
	d.id,
	d.name
from employee e
left join department d 
on e.department_id = d.id;

-- slightly different way to write this 
select
	e.id,
	e.first_name,
	e.last_name,
	d.id,
	d.name
from employee e
left outer join department d 
on e.department_id = d.id;

-- now we get the un-related employee, because it comes from the "left" table

