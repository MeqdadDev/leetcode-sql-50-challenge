-- Write your PostgreSQL query statement below
SELECT product_name, year, price
FROM Sales s
LEFT JOIN Product p
ON s.product_id = p.product_id
ORDER BY s.year ASC;