# Write your MySQL query statement below
SELECT  
    query_name,
    ROUND(AVG(rating/position),2) as quality,
    ROUND(AVG(CASE when rating<3 then 1 else 0 END)*100,2) as poor_query_percentage 

FROM Queries 
WHERE query_name IS NOT NULL
group by query_name 