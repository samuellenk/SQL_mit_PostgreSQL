/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: specify a row LIMIT and OFFSET for SELECT
 */

-- get all rows and columns with this command
select * from pets;

-- limit the result with LIMIT clause
select * from pets limit 3;

-- limit with offset the result
select * from pets limit 3 offset 2;

-- where can this be useful?
