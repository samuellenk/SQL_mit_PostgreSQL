/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: showing grant & revoke effects for Joe
 */

-- Joe is working with the candidates table

select * from candidates;

insert into candidates(first_name, last_name, email, phone_number, birth_date, qualifications)
values ('John', 'Devonton', 'john@mail.com', '123456789', '1999-04-25', 'sql, postgresql, database master');

update candidates set first_name = 'Johnny' where cid = 1;

insert into candidates(first_name, last_name, email, phone_number, birth_date, qualifications)
values ('Maria', 'SQL Master', 'maria@sql.org', '333333333', '2002-12-12', 'sql, postgresql, oracle, database master');

delete from candidates where first_name = 'Johnny';

insert into employee (id, first_name, last_name, email, phone_number, birth_date, hire_date, job_title, salary, manager_id, active, picture, department_id)
select 24, first_name, last_name, email, phone_number, birth_date, now(), 'Database Expert', 8500, 1, true, null, 7	from candidates;

select * from employee
where first_name = 'Maria'
;
