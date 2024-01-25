# Write your MySQL query statement below
SELECT user_id as id, COUNT(user_id) AS num
FROM (
    SELECT accepter_id AS user_id
    FROM RequestAccepted
    
    UNION ALL
    
    SELECT requester_id AS user_id
    FROM RequestAccepted
) AS combined_data
GROUP BY user_id
ORDER BY num DESC
LIMIT 1;
