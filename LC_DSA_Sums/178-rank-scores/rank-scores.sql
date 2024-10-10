# Write your MySQL query statement below
SELECT score,
     DENSE_RANK() OVER (Order By score DESC) AS 'rank'
FROM Scores