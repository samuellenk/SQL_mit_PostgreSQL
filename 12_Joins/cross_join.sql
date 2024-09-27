/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: cross join demo
 */

-- cross join = each row from table A is combined with each row from table B
select
	e.id,
	e.first_name,
	e.last_name,
	d.id,
	d.name
from employee e
cross join department d;

-- slightly different way to write the same query
select e.id,
	e.first_name,
	e.last_name,
	d.id,
	d.name
from employee e, department d;

