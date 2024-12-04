-- Write your PostgreSQL query statement below

SELECT name, population, area FROM World
WHERE area >= 3000000 OR population >= 25000000;

-- Another Solution

SELECT name, population, area FROM World
WHERE NOT (area < 3000000 AND population < 25000000);