# Write your MySQL query statement below
SELECT 
    user_id,
    IFNULL(COUNT(follower_id),0) as followers_count
FROM 
    Followers 
GROUP BY 
    user_id
ORDER BY
    user_id 
