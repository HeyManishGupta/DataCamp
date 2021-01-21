/*
An INNER JOIN shows you exact matches. What about when you want to compare all the values in one table with another, to see which rows match? That's when you can use a LEFT JOIN.

A LEFT JOIN will return ALL rows in the first table, and any matching rows in the right table. If there aren't any matches in the right table for a particular row, then a NULL is returned. This quickly lets you assess the gaps in your data, and how many you have.

Instructions
------------
Complete the LEFT JOIN, returning all rows from the specified columns from invoiceline and any matches from invoice.
*/

SELECT 
  invoiceline_id,
  unit_price, 
  quantity,
  billing_state
  -- Specify the source table
FROM invoiceline
  -- Complete the join to the invoice table
left JOIN invoice
on invoiceline.invoice_id = invoice.invoice_id;
