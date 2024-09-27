/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: show character & text data-types
 */

-- show a table for varchar columns
select id, first_name, last_name, phone_number, email, job_title 
from employee
order by id asc;

-- insert some more data in this table
insert into employee (id, first_name, last_name, email, birth_date, hire_date, salary, active, job_title) values
(77777, 'Deborah Susan Mary Ann', 'James Long Last Name Person That you wont believe', 'deborahsusanmaryann@company.org',
'1995-07-08', '2020-12-01', 7000, false, 
'Incredibly Long Job Title for this employee from the Marketing department was invented');
insert into employee (id, first_name, last_name, email, birth_date, hire_date, salary, active, job_title) values
(88888, 'Dave', 'Ming Chen', 'dave@company.org', '1985-12-18', '2021-01-01', 7000, false, 
'A%nfTZPCKm&r6!3h8GNC4T$$JvXfGwfz!mzR**OQ*NcMs%STGJEY6hkD&5W97b5DH34NVJs@542*aqaq3v#j^JhTQMC5xp^v2Hh2 Marketing');

-- what can be stored as "character" is defined by the database charset
show server_encoding;
-- UTF8 can store all known characters

-- you can also restrict what goes into a varchar column regarding length
create table demo_varchar(
	varchar_field varchar(50),
	text_field text,
	char_field char(2)
);

insert into demo_varchar (text_field)
values ('nfTZPCKm&r6!3h8GNC4T$$JvXfGwfz!mzR**OQ*NcMs%STGJEY6hkD&5W97b5DH34NVJs@542*aqaq3v#j^Jh');
insert into demo_varchar (varchar_field)
values ('long string that will hopefully fit into the table');
insert into demo_varchar (char_field)
values ('DE');

select * from demo_varchar;

