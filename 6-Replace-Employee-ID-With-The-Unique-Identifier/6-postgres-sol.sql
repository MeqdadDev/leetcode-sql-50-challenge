-- Write your PostgreSQL query statement below
SELECT eu.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI AS eu
ON e.id = eu.id
ORDER BY e.name ASC;