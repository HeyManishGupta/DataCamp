/*
Inner join countries on the left and languages on the right with USING(code).
Select the fields corresponding to:
country name AS country,
continent name,
language name AS language, and
whether or not the language is official.
Remember to alias your tables using the first letter of their names.
*/

-- 4. Select fields
select c.name as country, c.continent, l.name as language, l.official
  -- 1. From countries (alias as c)
  from countries as c
  -- 2. Join to languages (as l)
  inner join languages as l
    -- 3. Match using code
    using(code);
