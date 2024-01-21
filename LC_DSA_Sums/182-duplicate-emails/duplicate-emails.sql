# Write your MySQL query statement below
SELECT email as Email FROM (
Select email , count(email)
FROm Person 
GROUP BY email
HAVING count(email) >= 2
) as temp  

-- Select email , count(email)
-- FROm Person 
-- GROUP BY email
