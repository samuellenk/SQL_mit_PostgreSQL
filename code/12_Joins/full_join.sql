/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: full join demo
 */

-- full join = get values existing in both tables + those only in left and only in right table
select
	e.id,
	e.first_name,
	e.last_name,
	d.id,
	d.name
from employee e
full join department d
on e.department_id = d.id;

-- slightly different way to write this 
select
	e.id,
	e.first_name,
	e.last_name,
	d.id,
	d.name
from employee e
full outer join department d
on e.department_id = d.id;

-- now we get the un-related employee & un-related department

