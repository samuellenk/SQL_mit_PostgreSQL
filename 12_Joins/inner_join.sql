/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: inner join demo
 */

-- inner join = only get values existing in both tables
select
	e.id,
	e.first_name,
	e.last_name,
	d.id,
	d.name
from employee e
inner join department d
on e.department_id = d.id
order by d.id asc;

-- so here no un-related employee or department show up in the result

