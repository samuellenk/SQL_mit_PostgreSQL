/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: Get data without duplicates using DISTINCT
 */

-- get all pet_names from our pets table
select pet_name from pets;

-- get only DISTINCT pet_names
select distinct(pet_name) from pets;

-- later you will learn more about functions, such as "DISTINCT" (-:

