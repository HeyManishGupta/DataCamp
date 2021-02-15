/*

SQL Server has a number of functions dedicated to working with date types. We will first analyze three functions which return integers representing the year, month, and day of month, respectively.

These functions can allow us to group dates together, letting us calculate running totals by year or month-over-month comparisons of expenditures. We could also analyze sales by calendar day of the month to determine if there is a strong monthly cycle.

Instructions
100 XP
Use the YEAR(), MONTH(), and DAY() functions to determine the year, month, and day for the current date and time.

*/

DECLARE
	@SomeTime DATETIME2(7) = SYSUTCDATETIME();

-- Retrieve the year, month, and day
SELECT
	year(@SomeTime) AS TheYear,
	month(@SomeTime) AS TheMonth,
	day(@SomeTime) AS TheDay;
