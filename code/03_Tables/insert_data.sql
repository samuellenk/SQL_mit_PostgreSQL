/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: populate a table with some data = INSERT
 */

-- some owner entries 
insert into owners values(1, 'Homer', 'Connery', '(308) 555-0100', 'homer@example.com');
insert into owners values(2, 'Bart', 'Pitt', '(231) 465-3497', 'bart@example.com');
insert into owners(id, first_name, last_name, phone) values(3, 'Nancy', 'Simpson', '(489) 591-0408');
insert into owners(id, first_name, last_name, phone) values(4, 'Boris', 'Trump', '(349) 611-8908');

-- some pet_type entries
insert into pet_types values(1, 'Bird');
insert into pet_types values(2, 'Cat');
insert into pet_types values(3, 'Dog');
insert into pet_types values(4, 'Fish');

-- some pet entries
insert into pets values(1, 2, 3, 'Fluffy', '2020-11-20');
insert into pets values(2, 3, 3, 'Fetch', '2019-08-16');
insert into pets values(3, 2, 2, 'Scratch', '2018-10-01');
insert into pets values(4, 3, 3, 'Wag', '2020-03-15');
insert into pets values(5, 1, 1, 'Tweet', '2020-11-28');
insert into pets values(6, 3, 4, 'Fluffy', '2020-09-17');

-- verify by getting selecting all data from the tables
select * from pets;
select * from owners;
select * from pet_types;

