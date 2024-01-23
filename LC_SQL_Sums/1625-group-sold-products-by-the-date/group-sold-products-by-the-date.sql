# Write your MySQL query statement below
SELECT 
	sell_date,
	COUNT(DISTINCT product) AS num_sold, 
	GROUP_CONCAT(DISTINCT product ORDER BY product ASC separator ',') AS products 
FROM Activities
GROUP BY sell_date
order by sell_date ASC;
# In group_concat the default seprator is ',' 