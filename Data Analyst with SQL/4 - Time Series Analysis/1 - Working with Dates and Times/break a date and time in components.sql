/*

Although YEAR(), MONTH(), and DAY() are helpful functions and are easy to remember, we often want to break out dates into different component parts such as the day of week, week of year, and second after the minute. This is where functions like DATEPART() and DATENAME() come into play.

Here we will use the night the Berlin Wall fell, November 9th, 1989.

Instructions 1/3
35 XP
1
2
3
Using the DATEPART() function, fill in the appropriate date parts. For a list of parts, review https://docs.microsoft.com/en-us/sql/t-sql/functions/datepart-transact-sql


*/


DECLARE
	@BerlinWallFalls DATETIME2(7) = '1989-11-09 23:49:36.2294852';

-- Fill in each date part
SELECT
	DATEPART(year, @BerlinWallFalls) AS TheYear,
	DATEPART(month, @BerlinWallFalls) AS TheMonth,
	DATEPART(day, @BerlinWallFalls) AS TheDay,
	DATEPART(dayofyear, @BerlinWallFalls) AS TheDayOfYear,
    -- Day of week is WEEKDAY
	DATEPART(WEEKDAY, @BerlinWallFalls) AS TheDayOfWeek,
	DATEPART(week, @BerlinWallFalls) AS TheWeek,
	DATEPART(second, @BerlinWallFalls) AS TheSecond,
	DATEPART(nanosecond, @BerlinWallFalls) AS TheNanosecond;
