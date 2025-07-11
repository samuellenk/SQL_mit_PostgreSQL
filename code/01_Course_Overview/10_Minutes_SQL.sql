/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: 10 Minutes SQL -> create a PET HOTEL database
 */

-- run this on onecompiler.com/postgresql

-- create your first table in the database
create table owners(
    id integer not null primary key,
    first_name varchar not null,
    last_name varchar not null,
    phone varchar not null,
    email varchar
);

-- and now the hotel guests
create table pets(
    id integer not null primary key,
    pet_type varchar,
    owner_id integer not null references owners(id),
    pet_name varchar not null,
    birth_date date
);

-- add some owner entries 
insert into owners values(1, 'Homer', 'Connery', '(308) 555-0100', 'homer@example.com');
insert into owners values(2, 'Bart', 'Pitt', '(231) 465-3497', 'bart@example.com');
insert into owners(id, first_name, last_name, phone) values(3, 'Nancy', 'Simpson', '(489) 591-0408');
insert into owners(id, first_name, last_name, phone) values(4, 'Boris', 'Trump', '(349) 611-8908'); 

-- add some pet entries
insert into pets values(1, 'Cat', 3, 'Fluffy', '2020-11-20');
insert into pets values(2, 'Dog', 3, 'Fetch', '2019-08-16');
insert into pets values(3, 'Cat', 2, 'Scratch', '2018-10-01');
insert into pets values(4, 'Dog', 3, 'Wag', '2020-03-15');
insert into pets values(5, 'Bird', 1, 'Tweet', '2020-11-28');
insert into pets values(6, 'Dog', 4, 'Fluffy', '2020-09-17');

-- get the data from your pets table
select * from owners; 

-- get the data from your owners table
select * from pets;

