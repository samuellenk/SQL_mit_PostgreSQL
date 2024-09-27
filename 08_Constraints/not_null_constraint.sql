/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: use the NOT NULL constraint
 */

-- complete the data in our table
update customer set last_name = 'Patil' where first_name = 'Jenny';

-- check the result
select * from customer;

-- add a NOT NULL constraint to customers
alter table customer alter column last_name set not null;

insert into customer (first_name, last_name, email, country)
values('Agustín', 'Lal', 'augustin@lal.th', 'TR');

insert into customer (first_name, last_name, email)
values('Alejandro', NULL, 'daniel@e.mail');

-- check the result again
select * from customer;

-- for the sake of completeness -> how to remove a NOT NULL constraint:
alter table customer alter column last_name drop not null;

