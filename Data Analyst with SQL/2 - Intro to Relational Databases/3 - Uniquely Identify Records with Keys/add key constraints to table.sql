/*
Two of the tables in your database already have well-suited candidate keys consisting of one column each: organizations and universities with the organization and university_shortname columns, respectively.

In this exercise, you'll rename these columns to id using the RENAME COLUMN command and then specify primary key constraints for them. This is as straightforward as adding unique constraints (see the last exercise of Chapter 2):

ALTER TABLE table_name
ADD CONSTRAINT some_name PRIMARY KEY (column_name)
Note that you can also specify more than one column in the brackets.

Instructions
------------
Rename the organization column to id in organizations.
Make id a primary key and name it organization_pk.

Rename the university_shortname column to id in universities.
Make id a primary key and name it university_pk.
*/

-- Rename the organization column to id
alter table organizations
rename column organization TO id;

-- Make id a primary key
ALTER TABLE organizations
add constraint organization_pk primary KEY (id);
--------------------
-- Rename the university_shortname column to id
alter table universities 
rename column university_shortname to id;

-- Make id a primary key
alter table universities 
add constraint university_pk primary key (id);
