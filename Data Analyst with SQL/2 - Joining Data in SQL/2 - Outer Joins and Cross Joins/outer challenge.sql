/*
Now that you're fully equipped to use outer joins, try a challenge problem to test your knowledge!

In terms of life expectancy for 2010, determine the names of the lowest five countries and their regions.

Instructions
------------
Select country name AS country, region, and life expectancy AS life_exp.
Make sure to use LEFT JOIN, WHERE, ORDER BY, and LIMIT.

*/

select c.name as country, c.region, p.life_expectancy as life_exp
from countries as c
left join populations as p 
 on c.code = p.country_code
-- Focus on 2010
where year = 2010
-- Order by life_exp
order by p.life_expectancy
-- Limit to 5 records
limit 5
