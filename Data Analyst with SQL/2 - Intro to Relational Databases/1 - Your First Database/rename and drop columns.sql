/*
As mentioned in the video, the still empty affiliations table has some flaws. In this exercise, you'll correct them as outlined in the video.

You'll use the following queries:

To rename columns:
ALTER TABLE table_name
RENAME COLUMN old_name TO new_name;
To delete columns:
ALTER TABLE table_name
DROP COLUMN column_name;

Instructions
------------
Rename the organisation column to organization in affiliations.
Delete the university_shortname column in affiliations.
*/

-- Rename the organisation column
ALTER TABLE affiliations 
RENAME column organisation TO organization;
-----------------
-- Rename the organisation column
ALTER TABLE affiliations
RENAME COLUMN organisation TO organization;

-- Delete the university_shortname column
alter table affiliations
drop column university_shortname;
