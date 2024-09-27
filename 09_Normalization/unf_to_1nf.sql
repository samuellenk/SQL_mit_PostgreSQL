/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: get from un-normalized form (UNF) to first normal form (1NF)
 */

-- satisfy 1NF = each column must have a single value 
select * from book;

-- we will split the author
create table author as select isbn, regexp_split_to_table(authors, ', ') as author_name from book; 
alter table book drop column authors;
alter table author add constraint fk_book_isbn foreign key(isbn) references book(isbn);

-- verify the result
select * from author;
select * from book;

-- we will improve that in the next steps
-- do you have some ideas?

