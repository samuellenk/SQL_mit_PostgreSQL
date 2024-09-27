/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: updating data in the employee table
 */

-- let's recall what employee data we now have
select id, job_title, department_id from employee;

-- a here a quick look at the reference data
select job_title, department_name, department_id from title_department order by department_id asc, job_title asc;

-- and at the department table
select * from department order by id asc;

-- time to update the employee table to point to valid departments
update employee set department_id = 1 where id = 1;
-- this is good, but tedious - we make that broader using LIKE
-- later you will learn more about LIKE 
update employee set department_id = 2 where job_title like 'Administration%';
update employee set department_id = 3 where job_title like 'Customer%' or job_title = 'Community Manager';
update employee set department_id = 4 where job_title like '%Account%';
update employee set department_id = 6 where job_title = 'Human Resources Representative';
update employee set department_id = 8 where job_title like 'Marketing%' or job_title like 'Public Relations%';
update employee set department_id = 9 where job_title like 'Purchasing%' or job_title like 'Stock%';

-- not it's  your turn: write & run similar UPDATE statements for department_id 5, 7, 10, 11
-- hint: use the reference table if employee.job_title and department.department is not enough
update employee set department_id = 7 where job_title = 'Programmer';
update employee set department_id = 5 where job_title like 'Finance%';
update employee set department_id = 10 where job_title like 'Sales%';
update employee set department_id = 11 where job_title like 'Shipping%';

-- now its time to alter the table again
alter table employee alter column department_id set not null;

-- and we make it officially foreign key
alter table employee add constraint fk_department_id foreign key (department_id) references department(id);

-- now we can only insert new employees, if we provide a valid department_id
insert into employee values 
(1111,'Dummy','Staff','dummy@cc.org','+123','1900-01-01',now(),'Marketing Staff',1.11,null,true,null, 8);

-- time to verify the result
select * from employee where department_id = 8;

-- and finally we can delete the reference table we used
drop table title_department;

