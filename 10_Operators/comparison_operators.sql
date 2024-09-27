/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: overview for comparison operators
 */

select distinct(amount) from payment order by 1;

-- <, <= -> smaller than / smaller or equal
select * from payment where amount < 0.99;
select * from payment where amount <= 0.99;

-- >, >= -> greater than / greater or equal
select * from payment where amount > 11;
select * from payment where amount >= 11;

-- = -> equal
select * from payment where amount = 10.99;

-- <>, != -> not equal
select count(*) from payment where amount != 10.99;
select count(*) from payment where amount <> 10.99;

