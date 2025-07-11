/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: create enhanced version of the "pet_hotel"
 */

-- what types of pets are staying at the pet hotel?
create table pet_types(
    id  		integer not null primary key,
    pet_type    varchar not null
);

-- who is the owner of each pet?
create table owners(
    id			integer not null primary key,
    first_name  varchar not null,
    last_name   varchar not null,
    phone       varchar not null,
    email       varchar
);

-- and finally the hotel guests
create table pets(
    id       	integer not null primary key,
    pet_type_id integer not null references pet_types(id),
    owner_id    integer not null references owners(id),
    pet_name    varchar not null,
    birth_date  date
);

-- confirm by the output / message that your create worked
-- or go to pet_hotel -> Schemas -> Public -> Tables and right click to "Refresh" (F5)

