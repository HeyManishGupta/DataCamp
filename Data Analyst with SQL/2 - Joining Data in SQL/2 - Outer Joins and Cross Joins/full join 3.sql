/*
You'll now explore using two consecutive full joins on the three tables you worked with in the previous two exercises.

Instructions
------------
Complete a full join with countries on the left and languages on the right.
Next, full join this result with currencies on the right.
Use LIKE to choose the Melanesia and Micronesia regions (Hint: 'M%esia').
Select the fields corresponding to the country name AS country, region, language name AS language, 
and basic and fractional units of currency.

*/

select c.name as country, c.region, l.name as language, cu.basic_unit, cu.frac_unit
from countries as c
full join languages as l
using (code)
full join currencies as cu
using (code)
-- 6. Where region like Melanesia and Micronesia
WHERE c.region LIKE 'M%esia';
--------------------------------------------------

