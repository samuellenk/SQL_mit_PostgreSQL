/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: delete ALL rows from a table
 */

-- get all rows and columns with this command
select * from employee;

--  use this CAREFULLY -> will remove all rows from your table 
truncate table employee;
-- is the same as "delete from employee"

