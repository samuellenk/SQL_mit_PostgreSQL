/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: get table from first normal form (1NF) to third normal form (3NF)
 */

-- this is what we currently have 
select * from author;
select * from book;

-- first let the business grow and we will have a "publication_type" table
create table publication_type (
	id int not null,
	publication_type_name text not null,
	constraint pk_publication_type_id primary key (id)
);

-- insert the values in this table
insert into publication_type values
	(1, 'Hardcover'),
	(2, 'Paperback'),
	(3, 'e-Book');

-- update the books table
update book set publication_type = 3 where isbn = '978-1491963418';
update book set publication_type = 1 where isbn = '978-1838985288';

-- change data type
alter table book alter column publication_type set data type int using publication_type::integer;
-- and reference the publication_type table
alter table book add constraint fk_publication_type foreign key(publication_type) references publication_type(id);

-- add some new formats of existing titles
insert into book values ('PostgreSQL: Up and Running', 49.99, 314, 'O''Reilly Media', 1, 'Database', '978-149196340');
insert into book values ('PostgreSQL: Up and Running', 19.99, 314, 'O''Reilly Media', 2, 'Database', '978-149196343');
insert into book values ('Learn PostgreSQL', 29.99, 650, 'Packt Publishing', 2, 'Database', '978-1491963417');
																			
-- check what we now have
select * from publication_type;
select * from book order by title asc;

