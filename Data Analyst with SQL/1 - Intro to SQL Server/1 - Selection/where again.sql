/*
When filtering strings, you need to wrap your value in 'single quotes', as you did in the previous exercise. You don't need to do this for numeric values, but you DO need to use single quotes for date columns.

In this course, dates are always represented in the YYYY-MM-DD format (Year-Month-Day), which is the default in Microsoft SQL Server.

Instructions
------------
Select the nerc_region and demand_loss_mw columns, limiting the results to those where affected_customers is greater than or equal to 500000.
Update your code to select description and affected_customers, returning records where the event_date was the 22nd December, 2013.
Limit the results to those where the affected_customers is BETWEEN 50000 and 150000, and order in descending order of event_date.
*/

-- Select nerc_region and demand_loss_mw
SELECT 
  nerc_region, demand_loss_mw 
FROM 
  grid 
-- Retrieve rows where affected_customers is >= 500000  
where affected_customers >= 500000;
--------------
-- Select description and affected customers
SELECT 
  description, 
  affected_customers
FROM 
  grid 
  -- Retrieve rows where the event_date was the 22nd December, 2013    
WHERE 
  event_date = '2013-12-22';
-----------------
-- Select description, affected_customers and event date
SELECT 
  description, 
  affected_customers,
  event_date
FROM 
  grid 
  -- The affected_customers column should be >= 50000 and <=150000   
WHERE 
  affected_customers BETWEEN 50000
  AND 150000 
   -- Define the order   
order by event_date desc;
Limit the results to those where the affected_customers is BETWEEN 50000 and 150000, and order in descending order of event_date.
