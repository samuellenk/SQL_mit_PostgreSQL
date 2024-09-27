/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: getting data that matches the WHERE condition
 */

-- get all rows and columns with this command
select * from pets;
select * from pet_types;
-- get only certain pet_type
select owner_id, pet_name, pet_type_id from pets where pet_type_id = 2;

-- get all except certain pet_type
select owner_id, pet_name, pet_type_id from pets where pet_type_id <> 2;
-- same result, only different comparison operator
select owner_id, pet_name, pet_type_id from pets where pet_type_id != 2;

-- see all pets for a specific owner
select * from pets where owner_id = 3;
-- WATCH OUT: There is the answer to "Who is the owner of Fluffy, the cat?"

-- and know let's see who is this owner 
select * from owners where id = 3;

