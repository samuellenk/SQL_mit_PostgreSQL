/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: create role and show attributes
 */

-- see all roles
select rolname, rolsuper, rolcreatedb, rolcreaterole, rolreplication, rolbypassrls, rolinherit, rolcanlogin, rolconnlimit, rolvaliduntil 
from pg_roles 
where rolname not like 'pg%';

-- create superuser role
create role john with superuser login password '1234';

-- create createdb role 
create role dba with createdb login password '1234';

-- create createrole role
create role roller with createrole login password '1234';

-- create replication role
create role replicator with replication login password '1234';

-- create bypassRLS role (RLS = row level security)
create role bypassor with bypassrls login password '1234';

-- create role with noinherit & notLogin:
create role bob with noinherit;

-- create login role
create role alice with login password '1234';

-- create role with validtiy period
create role dev_api with login password '1234' valid until '2030-01-01';

-- create role with connection limit
create role api with login password '1234' connection limit 1000;

-- drop role john, dba, roller, replicator, bypassor, bob, alice, dev_api, api;
