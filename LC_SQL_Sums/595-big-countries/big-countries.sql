-- # Write your MySQL query statement below
-- select name
--     , population
--     , area
-- from World 
-- where 
--     area >= 3000000
--     OR 
--     population >= 25000000
SELECT name, population, area
FROM World
WHERE area >= 3000000

UNION 

SELECT name, population, area
FROM World
WHERE population >= 25000000