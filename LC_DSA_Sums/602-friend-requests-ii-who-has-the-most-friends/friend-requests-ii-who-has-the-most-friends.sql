# Write your MySQL query statement below
-- SELECT DISTINCT accepter_id   , COUNT(accepter_id ) as dw
-- FROM RequestAccepted 
-- GROUP BY accepter_id 

-- SELECT DISTINCT requester_id    , COUNT(requester_id  ) as dw
-- FROM RequestAccepted 
-- GROUP BY requester_id  

-- SELECT  DISTINCT requester_id  , COUNT(accepter_id ) OVER (PARTITION BY requester_id) as dw
-- FROM RequestAccepted 
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
