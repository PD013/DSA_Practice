# Write your MySQL query statement below
WITH RankedQueue AS (
    SELECT
        turn,
        person_name,
        weight,
        SUM(weight) OVER (ORDER BY turn) AS Total_weight
    FROM
        QUEUE
)
SELECT person_name
FROM RankedQueue
WHERE Total_weight <= 1000
ORDER BY turn DESC
LIMIT 1;

