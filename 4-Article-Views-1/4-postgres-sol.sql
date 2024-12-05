-- Write your PostgreSQL query statement below
SELECT DISTINCT author_id AS id 
FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC;

-- Another Solution using Subquery

SELECT DISTINCT author_id AS id 
FROM Views v1 
WHERE EXISTS (
    SELECT 1 
    FROM Views v2 
    WHERE v1.author_id = v2.viewer_id
)
ORDER BY id;