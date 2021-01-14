/*
Near query result to the right, you will see two new tables with names economies2010 and economies2015.

Combine these two tables into one table containing all of the fields in economies2010. 
The economies table is also included for reference.
Sort this resulting single table by country code and then by year, both in ascending order.
*/

-- Select fields from 2010 table
select * from economies2010
  -- From 2010 table
	-- Set theory clause
	union
-- Select fields from 2015 table
select * from economies2015
  -- From 2015 table
-- Order by code and year
order by code, year;
