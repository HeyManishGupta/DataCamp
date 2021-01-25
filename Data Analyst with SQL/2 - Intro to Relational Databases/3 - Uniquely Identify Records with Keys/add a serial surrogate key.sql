/*
Since there's no single column candidate key in professors (only a composite key candidate consisting of firstname, lastname), you'll add a new column id to that table.

This column has a special data type serial, which turns the column into an auto-incrementing number. This means that, whenever you add a new professor to the table, it will automatically get an id that does not exist yet in the table: a perfect primary key!

Instructions
------------
Add a new column id with data type serial to the professors table.
Make id a primary key and name it professors_pkey.
Write a query that returns all the columns and 10 rows from professors.
*/

-- Add the new column to the table
ALTER TABLE professors 
add column id serial;
------------------
-- Add the new column to the table
ALTER TABLE professors 
ADD COLUMN id serial;

-- Make id a primary key
ALTER table professors  
add CONSTRAINT professors_pkey primary key (id);
-------------------
-- Add the new column to the table
ALTER TABLE professors 
ADD COLUMN id serial;

-- Make id a primary key
ALTER TABLE professors 
ADD CONSTRAINT professors_pkey PRIMARY KEY (id);

-- Have a look at the first 10 rows of professors
select * from professors limit 10;
