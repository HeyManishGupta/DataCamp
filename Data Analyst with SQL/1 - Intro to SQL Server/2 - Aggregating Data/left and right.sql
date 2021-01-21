/*
We can retrieve portions of a string from either the start of the string, using LEFT, or working back from the end of the string, using RIGHT.

Instructions
------------
Retrieve the first 25 characters from the description column in the grid table. Name the results first_25_left
Amend the query to retrieve the last 25 characters from the description. Name the results last_25_right.
*/

-- Select the first 25 characters from the left of the description column
SELECT 
  left(description, 25) AS first_25_left 
FROM 
  grid;
-------------
-- Amend the query to select 25 characters from the  right of the description column
SELECT 
  right(description, 25) AS last_25_right  
FROM 
  grid;
