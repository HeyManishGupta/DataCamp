/*
It's time to rock and roll! In this set of exercises, you'll use the songlist table, which contains songs featured on the playlists of 25 classic rock radio stations.

First, let's get familiar with the data.

Insstruction
------------
Retrieve the song, artist, and release_year columns from the songlist table.
*/

-- select top (5) * from songlist;
select song, artist, release_year from songlist;
