# Write your MySQL query statement below
SELECT sg.user_id,ROUND(IFNULL(SUM(case when co.action = 'timeout' THEN 0 else 1 END)/(COUNT(co.user_id)),0),2) as confirmation_rate
FROM Signups sg
LEFT OUTER JOIN Confirmations co 
ON sg.user_id = co.user_id 
GROUP BY sg.user_id