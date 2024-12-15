-- Write your PostgreSQL query statement below

SELECT a1.machine_id, ROUND(AVG(a2.timestamp - a1.timestamp)::numeric, 3) AS processing_time
FROM Activity a1
JOIN Activity a2 ON a1.machine_id = a2.machine_id AND a1.process_id = a2.process_id AND
a1.activity_type = 'start' AND a2.activity_type = 'end'
GROUP BY a1.machine_id;

-- OR......

-- SELECT 
--     machine_id, 
--     ROUND(AVG(
--         (SELECT timestamp 
--          FROM Activity a2 
--          WHERE a2.machine_id = a1.machine_id 
--            AND a2.process_id = a1.process_id 
--            AND a2.activity_type = 'end') - 
--         (SELECT timestamp 
--          FROM Activity a2 
--          WHERE a2.machine_id = a1.machine_id 
--            AND a2.process_id = a1.process_id 
--            AND a2.activity_type = 'start')
--     )::numeric, 3) AS processing_time
-- FROM Activity a1
-- WHERE activity_type = 'start'
-- GROUP BY machine_id;