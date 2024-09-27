/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: populate a table quicker with more data = multi-line INSERT
 */

-- two new owners 
insert into owners(id, first_name, last_name, phone, email)
values(10, 'Harry', 'Trueman', '(111) 222-3333', 'harry@example.com');
insert into owners(id, first_name, last_name, phone) 
values(11, 'Sarah', 'Connor', '(555) 555-5555');

-- and their pets
insert into pets(id, pet_type_id, owner_id, pet_name) 
values(9, 3, 10, 'Bark');
insert into pets(id, pet_type_id, owner_id, pet_name) 
values(8, 2, 11, 'Meow');

-- use can also insert multiple rows in one statement
insert into pets(id, pet_type_id, owner_id, pet_name) 
values
	(10, 1, 10, 'Chirp'),
	(11, 2, 11, 'Iau'),
	(12, 3, 11, 'Rrr'); 

-- and a new pet type entry
insert into pet_types(id, pet_type) values(9, 'Rabbit');

-- verify by getting selecting all data from the tables
select * from pets;
select * from owners;
select * from pet_types;

