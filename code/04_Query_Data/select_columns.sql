/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: getting specified COLUMNS from the table
 */

-- get specific columns for all rows with this command
select pet_name,
	birth_date 
from pets;

-- use auto-completion to avoid typos (-;

-- get columns using "alias" with this command
select pet_name as "Pet Name", 
	birth_date as "Birthday"
from pets;

-- keyword "AS" is optional
-- double quotes can help for aliases with spaces, special chars etc.

