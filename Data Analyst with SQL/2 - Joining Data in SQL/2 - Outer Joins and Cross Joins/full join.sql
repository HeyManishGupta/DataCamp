/*
In this exercise, you'll examine how your results differ when using a full join versus using a left join versus using 
an inner join with the countries and currencies tables.

You will focus on the North American region and also where the name of the country is missing. Dig in to see what we mean!

Begin with a full join with countries on the left and currencies on the right. The fields of interest have been SELECTed 
for you throughout this exercise.

Then complete a similar left join and conclude with an inner join.

Instructions
------------
Choose records in which region corresponds to North America or is NULL.

Repeat the same query as above but use a LEFT JOIN instead of a FULL JOIN. 
Note what has changed compared to the FULL JOIN result!

Repeat the same query as above but use an INNER JOIN instead of a FULL JOIN. 
Note what has changed compared to the FULL JOIN and LEFT JOIN results!

*/

SELECT name AS country, code, region, basic_unit
-- 1. From countries
FROM countries as c
  -- 2. Join to currencies
  left JOIN currencies as cu
    -- 3. Match on code
    USING (code)
-- 4. Where region is North America or null
WHERE c.region = 'North America' OR c.region IS NULL
-- 5. Order by region
ORDER BY region;
-------------------------------------------
SELECT name AS country, code, region, basic_unit
-- 1. From countries
FROM countries as c
  -- 2. Join to currencies
  inner JOIN currencies as cu
    -- 3. Match on code
    USING (code)
-- 4. Where region is North America or null
WHERE c.region = 'North America' OR c.region IS NULL
-- 5. Order by region
ORDER BY region;
