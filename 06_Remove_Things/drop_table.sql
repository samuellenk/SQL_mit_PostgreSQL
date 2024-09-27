/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: delete a COMPLETE table = data + structure
 */

-- get all rows and columns with this command
select * from employee;
-- this will show an error after having executed the DROP TABLE

--  use this CAREFULLY -> will delete your complete table 
drop table employee;
-- you will get an extra warning in DBeaver

