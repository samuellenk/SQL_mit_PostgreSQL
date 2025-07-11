/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: use the FOREIGN KEY constraint 
 */

-- FOREIGN KEY constraint: shown with orders table
select * from customer;
select * from orders;

-- first we make the customers table "referenceable"
alter table customer 
add constraint pk_customer_id primary key (id);

-- now we add the reference to the orders table
alter table orders 
add constraint fk_customer_id foreign key (customer_id) references customer(id)
on update cascade 
on delete restrict;

-- does not work yet with the given dataset
-- we can fix it by removing the orders for non-existing customer
select * from orders where customer_id = 13;
delete from orders where customer_id = 13;

-- now the above query will work and allow us to add the foreign key to the orders table 

-- here we can see the result
select * from orders where customer_id = 11;
select * from customer where id = 11;

-- or we open the ER diagram -> also shows the relationship

