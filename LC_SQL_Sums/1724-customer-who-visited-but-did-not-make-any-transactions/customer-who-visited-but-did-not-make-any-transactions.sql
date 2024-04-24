SELECT customer_id , COUNT(customer_id ) as count_no_trans 
from Visits 
WHERE visit_id not in (SELECT DISTINCT visit_id from Transactions)
GROUP BY customer_id;


## OLD SOLUTION 
# Write your MySQL query statement below
-- Select Visits.customer_id, 
-- count(Visits.visit_id) AS  count_no_trans
-- FROM Visits 
-- LEFT JOIN Transactions 
-- ON Visits.visit_id  = Transactions.visit_id 
-- where Transactions.transaction_id IS NULL
-- GROUP BY customer_id;