# Write your MySQL query statement below

SELECT name as Customers  FROM 
(SELECT C.id,name,O.customerId as orderd 
FROM Customers as C
LEFT JOIN Orders as O
ON  C.id = O.customerId) temp
WHERE orderd is NULL 