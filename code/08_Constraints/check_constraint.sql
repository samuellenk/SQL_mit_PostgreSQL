/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: use the CHECK constraint
 */

-- we add one column to have useful information
alter table customer add column premium boolean default false;

-- now a CHECK constraint is added
alter table customer add constraint check_premium_active
check ((active and premium)
	or (active and not premium)
	or (not active and not premium));

-- try to insert a customer, where you show that the check is working
insert into customer (first_name, email, country, active, premium) values ('Jenny', 'jenny@abc.de','CA', true, false);
insert into customer (first_name, email, country, active, premium) values ('Jenny', 'jenny@abc.de','CA', true, true);
insert into customer (first_name, email, country, active, premium) values ('Jenny', 'jenny@abc.de','CA', false, true);
insert into customer (first_name, email, country, active, premium) values ('Jenny', 'jenny@abc.de','CA', false, false);

-- check the result
select * from customer;
-- no customer can have active = false with premium = true

