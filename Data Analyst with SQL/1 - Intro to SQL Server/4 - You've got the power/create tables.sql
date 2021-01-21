/*
Say you want to create a table to consolidate some useful track information into one table. This will consist of the track name, the artist, and the album the track came from. You also want to store the track length in a different format to how it is currently stored in the track table. How can you go about doing this? Using CREATE TABLE. Recall the example from the video:

CREATE TABLE test_table(
  test_date DATE, 
  test_name VARCHAR(20), 
  test_int INT
)
Let's get started!

Instructions
------------
Create a table named 'results' with 3 VARCHAR columns called track, artist, and album, with lengths 200, 120, and 160, respectively.
Create one integer column called track_length_mins.
SELECT all the columns from your new table. No rows will be returned, but you can confirm that the table has been created.
*/

-- Create the table
create table results (
	-- Create track column
	track varchar(200),
    -- Create artist column
	artist varchar(120),
    -- Create album column
	album varchar(160),
	);
---------------
-- Create the table
CREATE TABLE results (
	-- Create track column
	track VARCHAR(200),
    -- Create artist column
	artist VARCHAR(120),
    -- Create album column
	album VARCHAR(160),
	-- Create track_length_mins
	track_length_mins int,
	);
  --------------------
  -- Create the table
CREATE TABLE results (
	-- Create track column
	track VARCHAR(200),
    -- Create artist column
	artist VARCHAR(120),
    -- Create album column
	album VARCHAR(160),
	-- Create track_length_mins
	track_length_mins INT,
	);

-- Select all columns from the table
SELECT 
  track, 
  artist, 
  album, 
  track_length_mins 
FROM 
  results;
