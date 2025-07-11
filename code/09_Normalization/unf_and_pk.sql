/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: create table in un-normalized form (UNF) and add primary key (PK)
 */

-- create a simple books table
create table book (
	title text,
	authors varchar,
	price numeric(10,2),
	pages int,
	publisher varchar,
	publication_type varchar,
	genre varchar
);

-- insert some values into the table
insert into book values ('PostgreSQL: Up and Running', 'Regina Obe, Leo Hsu', 39.99, 314, 
'O''Reilly Media', 'e-Book', 'Database');
insert into book values ('Learn PostgreSQL', 'Luca Ferrari , Enrico Pirozzi', 35.99, 650, 
'Packt Publishing', 'Hardcover', 'Database');

-- verify the result
select * from book;

-- alter the book table
alter table book add column isbn text;

-- now insert values for the new column
update book set isbn = '978-1491963418' where authors = 'Regina Obe, Leo Hsu';
update book set isbn = '978-1838985288' where authors = 'Luca Ferrari , Enrico Pirozzi';

-- new books now have to have an ISBN
alter table book alter column isbn set not null;
alter table book add constraint isbn primary key (isbn);

-- verify the result
select * from book;

-- we will improve that in the next steps

