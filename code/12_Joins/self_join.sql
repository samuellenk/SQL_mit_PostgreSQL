/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: self join demo
 */

-- self join = join a table to itSELF
-- works only for tables that have a self-reference
-- this is the case for our employee table that has a manager_id pointing to another employee in the same table
select e.id, e.first_name, e.last_name, e.manager_id from employee e;

-- is not a new form of join, but takes the form of any other join type
select
	emp.id,
	emp.first_name,
	emp.last_name,
	mgr.id,
	mgr.first_name,
	mgr.last_name
from employee emp
left join employee mgr
on emp.manager_id = mgr.id;

-- here we get manager information for each employee

