-- Write your PostgreSQL query statement below
SELECT n.id
FROM Weather o
JOIN Weather n on n.recordDate = o.recordDate + INTERVAL '1 day'
WHERE n.temperature > o.temperature;

-- OR......

-- WITH RankedWeather AS (
--     SELECT 
--         id, 
--         temperature, 
--         recordDate,
--         LAG(temperature) OVER (ORDER BY recordDate) AS prev_temp,
--         LAG(recordDate) OVER (ORDER BY recordDate) AS prev_date
--     FROM Weather
-- )
-- SELECT id 
-- FROM RankedWeather
-- WHERE temperature > prev_temp 
--   AND recordDate = prev_date + INTERVAL '1 day';