# Write your MySQL query statement below
-- This is foor Daniel   
SELECT name as results from (
SELECT DISTINCT MR.user_id ,count(MR.user_id) , name
FROM MovieRating as MR 
LEFT JOIN  Users as Us
ON MR.user_id = Us.user_id     
GROUP BY user_id
ORDER BY count(MR.user_id) DESC , name ASC
LIMIT 1 ) as temp2 
UNION ALL  
-- This is for frozen 2
SELECT title FROM 
(SELECT title ,MR.movie_id , AVG(rating) as average
FROM MovieRating as MR
LEFT JOIN Movies as M 
ON MR.movie_id = M.movie_id    
WHERE created_at LIKE '2020-02-%%'
GROUP BY MR.movie_id
ORDER BY AVG(rating) DESC , title ASC
LIMIT 1 ) temp      