/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: delete a COMPLETE database = all tables, all data, any other object
 */

-- create a database just for the drop database example
create database drop_me_db;

-- get a list of databases
select datname from pg_database
where datistemplate = false
order by datname;

-- ☠️ use this CAREFULLY -> will delete your complete database
drop database drop_me_db;
-- connect as USER "postgres" to do that

