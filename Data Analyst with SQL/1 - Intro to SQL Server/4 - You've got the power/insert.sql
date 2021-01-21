/*
This exercise consists of two parts: In the first, you'll create a new table very similar to the one you created in the previous interactive exercise. After that, you'll insert some data and retrieve it.

You'll continue working with the Chinook database here.

Instructions
------------
Create a table called tracks with 2 VARCHAR columns named track and album, and one integer column named track_length_mins. Then, select all columns from the new table using the * notation.
Insert the track 'Basket Case', from the album 'Dookie', with a track length of 3, into the appropriate columns.
Select the title column from the album table where the album_id is 213.
Hit 'Submit Answer' to see whether or not the album title was shortened!
*/

-- Create the table
CREATE TABLE tracks(
	-- Create track column
	track varchar(200),
    -- Create album column
  	album varchar(160),
	-- Create track_length_mins column
	track_length_mins int
);
-- Select all columns from the new table
SELECT 
  * 
FROM 
  tracks;
------------
-- Create the table
CREATE TABLE tracks(
  -- Create track column
  track VARCHAR(200), 
  -- Create album column
  album VARCHAR(160), 
  -- Create track_length_mins column
  track_length_mins INT
);
-- Complete the statement to enter the data to the table         
insert INTO tracks (track, album, track_length_mins)
-- Specify the destination columns
-- Insert the appropriate values for track, album and track length
VALUES ('Basket Case', 'Dookie', 3) ;
-- Select all columns from the new table
SELECT 
  *
FROM 
  tracks;
-----------------
-- Select the album
SELECT 
  title 
FROM 
  album 
WHERE 
  album_id = 213;
-----------------
-- Run the query
SELECT 
  title 
FROM 
  album 
WHERE 
  album_id = 213;
-- UPDATE the album table
update  
  album
-- SET te new title    
set 
  title = 'Pure Cult: The Best Of The Cult'
WHERE album_id = 213;
---------------------

