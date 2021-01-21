/*
Summing and counting are key ways of aggregating data, regardless of whether you are using a database, manipulating a spreadsheet, or using a programming language such as Python or R. Let's see how to do it in T-SQL using the grid table from Chapter 1.

You'll start by obtaining overall sums, focusing specifically on the 'MRO' region.

Instructions
------------
Obtain a grand total of the demand_loss_mw column by using the SUM function, and alias the result as MRO_demand_loss.
Only retrieve rows WHERE demand_loss_mw is not NULL and nerc_region is 'MRO'.
*/

-- Sum the demand_loss_mw column
SELECT 
  sum(demand_loss_mw) AS MRO_demand_loss 
FROM 
  grid 
WHERE
  -- demand_loss_mw should not contain NULL values
  demand_loss_mw is not null  
  -- and nerc_region should be 'MRO';
  and nerc_region = 'MRO';
