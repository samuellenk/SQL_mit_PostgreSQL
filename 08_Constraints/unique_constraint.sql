/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: use the UNIQUE constraint 
 */

-- what we currently have in the table
select * from customer;

-- clean up the table tp be able to add the unique constraint
delete from customer where id < 7;

-- now we add a UNIQUE constraint
alter table customer add constraint unique_customer_email unique (email);

-- now insert a new customer
insert into customer (first_name, last_name, email, country)
values ('Emilia', 'May', 'emilia@may.at', 'AT');
-- new customer trys to register again
insert into customer (first_name, last_name, email, country) 
values ('Emilia', 'May', 'emilia@may.at', 'AT');

select * from customer;

