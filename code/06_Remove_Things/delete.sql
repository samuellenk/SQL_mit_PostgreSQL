/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: delete ROWS from a table
 */

-- get all rows and columns with this command
select * from employee order by id asc;

-- always a good idea to SELECT with WHERE before DELETE
select * from employee where id > 23 order by id;
-- once we have this, we go ahead and delete

delete from employee where id > 23;

-- observe the confirmation message
-- verify with the above query, if you want

-- this is also possible but use it CAREFULLY
-- therefore DBeaver shows a WARN message
delete from employee;
-- will remove all rows from your table

