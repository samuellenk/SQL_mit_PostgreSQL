/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: use the PRIMARY KEY constraint
 */

-- PRIMARY KEY constraint
create table orders (
	id integer not null,
	order_date timestamp with time zone not null default now(),
	item_id varchar not null,
	item_quantity int not null,
	customer_id integer not null,
	constraint pk_orders primary key (id) -- named constraint
);
-- another way of doing the same
create table orders (
	id integer not null primary key,
	order_date timestamp with time zone not null default now(),
	item_id varchar not null,
	item_quantity int not null,
	customer_id integer not null
);

-- truncate customers to remove the current dummy values
truncate table customer;

-- insert new customers for orders
insert into customer values (10, 'Marc', 'Robbins', 'm@robbins.com', true, 'AT', false),
	(11, 'Abril', 'Fernandes', 'abril@mail.com', true, 'UK', false),
	(12, 'Leo', 'Khalid', 'leo@khalid.mail', true, 'MC', true);

-- insert some orders
insert into orders (id,order_date,item_id,item_quantity,customer_id) values
	 (1,'2019-02-21 23:04:38.946+01','OVQTYX',2,11),
	 (2,'2018-10-08 16:30:14.166+02','FNCBMN',9,10),
	 (3,'2019-03-23 12:18:45.585+01','QPZMQE',4,11),
	 (4,'2018-11-25 22:26:08.797+01','2GNEDT',1,10),
	 (5,'2019-11-02 23:53:06.718+01','QK6GFE',9,13),
	 (6,'2018-07-09 08:38:07.047+02','IJIO6N',4,11),
	 (7,'2018-07-01 15:04:22.576+02','JJ77HB',5,13),
	 (8,'2020-05-10 10:22:27.229+02','H6AAPJ',8,10),
	 (9,'2018-07-19 05:13:44.532+02','IUKQVU',6,10),
	 (10,'2021-03-06 19:24:08.528+01','MJDZUR',7,12),
	 (11,'2021-04-28 21:54:25.187+02','UE8MKQ',9,11),
	 (12,'2020-09-27 17:29:39.509+02','7JF09H',2,10),
	 (13,'2018-07-19 05:17:40.122+02','ACVNZX',4,11),
	 (14,'2021-02-04 04:48:53.92+01','3IBLQU',9,12),
	 (15,'2021-04-09 22:25:17.867+02','PTBYWD',4,10);

select * from orders;
select * from customer;

