/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: some useful mathematical functions
 */

-- abs
select abs(-5.5);

-- power
select power(5,3) as pwr;
select 5^3 as pwr; -- ^ = circumflex/caret

-- random value in the range 0.0 <= x < 1.0
select random();

-- round = bankers rounding
select round(155555.033534235, 3);

-- ceiling = round up
select ceiling(155555.033534235);

-- floor = round down
select floor(155555.033534235);

-- truncate = cut
select trunc(155555.033534235, 3);

