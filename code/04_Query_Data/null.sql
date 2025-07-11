/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: special value NULL in queries
 */

select * from pets;

select id, pet_name, birth_date from pets where birth_date is null;

-- query for NULL values in your table
select * from pets where birth_date is null;

-- what does it mean when no rows are shown?

select * from owners where email is not null;

