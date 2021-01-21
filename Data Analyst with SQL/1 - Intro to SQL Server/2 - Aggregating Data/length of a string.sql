/*
Knowing the length of a string is key to being able to manipulate it further using other functions, so what better way to start the lesson?

Instructions
------------
Retrieve the length of the description column, returning the results as description_length.
*/

-- Calculate the length of the description column
SELECT 
  len(description) as description_length 
FROM 
  grid;
