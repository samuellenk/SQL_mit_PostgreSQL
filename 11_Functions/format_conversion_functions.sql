/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: some useful data formatting and conversion functions
 */

-- to_char = converts timestamp, interval, numeric types to text
select to_char(current_timestamp, 'HH:MI');

-- to_date
select to_date('05 Dec 2000', 'DD Mon YYYY');
-- use only if cannot be converted by simple casting
select '05 Dec 2000'::date;

-- to_number
select to_number('112.454,8-', '999G999D9S');
-- use only if cannot be converted by simple casting
select '-12454.8'::numeric;

-- to_timestamp
select to_timestamp('05 Dec 2000', 'DD Mon YYYY');
-- use only if cannot be converted by simple casting
select '05 Dec 2000'::timestamp;

-- format
select format('%s %s', first_name, last_name) as fullname from customer order by fullname;

-- cast
select cast('123.456' as float8);
select '123.456'::float8;
select '15 minutes'::interval;

