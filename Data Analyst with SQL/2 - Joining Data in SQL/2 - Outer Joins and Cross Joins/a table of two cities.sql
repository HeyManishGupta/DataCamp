/*
This exercise looks to explore languages potentially and most frequently spoken in the cities of Hyderabad, 
India and Hyderabad, Pakistan.

You will begin with a cross join with cities AS c on the left and languages AS l on the right. 
Then you will modify the query using an inner join in the next tab.

Instructions
------------
Create the cross join as described above. (Recall that cross joins do not use ON or USING.)
Make use of LIKE and Hyder% to choose Hyderabad in both countries.
Select only the city name AS city and language name AS language.

Use an inner join instead of a cross join. Think about what the difference will be in the results for 
this inner join result and the one for the cross join.
*/

select c.name as city, l.name as language
from cities as c
cross join languages as l
-- 3. Where c.name like Hyderabad
WHERE c.name LIKE 'Hyder%';
-----------------------------
select c.name as city, l.name as language
from cities as c
inner join languages as l
on c.country_code = l.code
-- 3. Where c.name like Hyderabad
WHERE c.name LIKE 'Hyder%';
