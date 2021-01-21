/*
In an earlier exercise, you wrote a separate WHERE query to determine the amount of demand lost for a specific region. We wouldn't want to have to write individual queries for every region. Fortunately,you don't have to write individual queries for every region. With GROUP BY, you can obtain a sum of all the unique values for your chosen column, all at once.

You'll return to the grid table here and calculate the total lost demand for all regions.

Instructions
------------
Select nerc_region and the sum of demand_loss_mw for each region.
Exclude values where demand_loss_mw is NULL.
Group the results by nerc_region.
Arrange in descending order of demand_loss.
*/



-- Select the region column
SELECT 
  nerc_region,
  -- Sum the demand_loss_mw column
  SUM(demand_loss_mw) AS demand_loss
FROM 
  grid
  -- Exclude NULL values of demand_loss
WHERE 
  demand_loss_mw is not null 
  -- Group the results by nerc_region
group by nerc_region 
  -- Order the results in descending order of demand_loss
ORDER BY 
  demand_loss desc;
