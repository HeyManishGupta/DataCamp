/*

Now you will complete the previous query in reverse!

Determine the names of capital cities that are not listed in the cities table.

------------

Order by capital in ascending order.
The cities table contains information about 236 of the world's most populous cities. The result of your query 
may surprise you in terms of the number of capital cities that DO NOT appear in this list!

*/

select capital from countries
except
select name from cities
 order by capital;
