/*
It's time to rock and roll! In this set of exercises, you'll use the songlist table, which contains songs featured on the playlists of 25 classic rock radio stations.

First, let's get familiar with the data.

Insstruction
------------
Retrieve the song, artist, and release_year columns from the songlist table.
Make sure there are no NULL values in the release_year column.
Order the results by artist and release_year.
*/

-- select top (5) * from songlist;
select song, artist, release_year from songlist;
-------------
-- Retrieve the song, artist and release_year columns
SELECT 
  song, 
  artist, 
  release_year 
FROM 
  songlist 
  -- Ensure there are no missing or unknown values in the release_year column
where release_year IS NOT NULL;
--------------
-- Retrieve the song,artist and release_year columns
SELECT 
  song, 
  artist, 
  release_year 
FROM 
  songlist 
  -- Ensure there are no missing or unknown values in the release_year column
WHERE 
  release_year IS NOT NULL 
  -- Arrange the results by the artist and release_year columns
order by artist, release_year;
