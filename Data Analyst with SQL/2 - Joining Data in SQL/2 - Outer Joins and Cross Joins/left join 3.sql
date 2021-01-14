/*
You'll now revisit the use of the AVG() function introduced in our Intro to SQL for Data Science course. 
You will use it in combination with left join to determine the average gross domestic product (GDP) per capita by region in 2010.

Instructions
------------
Begin with a left join with the countries table on the left and the economies table on the right.
Focus only on records with 2010 as the year.

Modify your code to calculate the average GDP per capita AS avg_gdp for each region in 2010.
Select the region and avg_gdp fields.

Arrange this data on average GDP per capita for each region in 2010 from highest to lowest average GDP per capita.
*/

-- 5. Select name, region, and gdp_percapita
SELECT name, region, gdp_percapita
-- 1. From countries (alias as c)
FROM countries as c
  -- 2. Left join with economies (alias as e)
  LEFT JOIN economies as e
    -- 3. Match on code fields
    ON c.code = e.code
-- 4. Focus on 2010
WHERE year = 2010;
-----------------------------
-- Select fields
SELECT region, avg(gdp_percapita) AS avg_gdp
-- From countries (alias as c)
FROM countries as c
  -- Left join with economies (alias as e)
  LEFT JOIN economies as e
    -- Match on code fields
    ON c.code = e.code
-- Focus on 2010
WHERE year = 2010
-- Group by region
GROUP BY region;
----------------------------
-- Select fields
SELECT region, AVG(gdp_percapita) AS avg_gdp
-- From countries (alias as c)
from countries as c
  -- Left join with economies (alias as e)
  left join economies as e
    -- Match on code fields
    on c.code = e.code
-- Focus on 2010
where year = 2010
-- Group by region
group by region
-- Order by descending avg_gdp
order by avg_gdp desc;
