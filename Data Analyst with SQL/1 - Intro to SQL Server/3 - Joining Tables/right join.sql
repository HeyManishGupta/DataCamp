/*
Let's now try some RIGHT joins. A RIGHT join will return all rows from the right hand table, plus any matches from the left hand side table.

In addition to performing a RIGHT join, you'll also learn how to avoid problems when different tables have the same column names, by fully qualifying the column in your select statement. Remember, we do this by prefixing the column name with the table name.

For this exercise, we'll return to the Chinook database from earlier in the chapter.

Instructions
------------
SELECT the fully qualified column names album_id from album and name from artist. Then, join the tables so that only matching rows are returned (non-matches should be discarded).
To complete the query, join the album table to the track table using the relevant fully qualified album_id column. The album table is on the left-hand side of the join, and the additional join should return all matches or NULLs.

*/

-- SELECT the fully qualified album_id column from the album table
SELECT 
  album_id,
  title,
  album.artist_id,
  -- SELECT the fully qualified name column from the artist table
  artist.name as artist
FROM album
-- Perform a join to return only rows that match from both tables
INNER JOIN artist ON album.artist_id = artist.artist_id
WHERE album.album_id IN (213,214)
-------------------
SELECT 
  album.album_id,
  title,
  album.artist_id,
  artist.name as artist
FROM album
INNER JOIN artist ON album.artist_id = artist.artist_id
-- Perform the correct join type to return matches or NULLS from the track table
right join track on track.album_id = album.album_id 
WHERE album.album_id IN (213,214)
