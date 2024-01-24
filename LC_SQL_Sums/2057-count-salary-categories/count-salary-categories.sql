# Write your MySQL query statement below


Select "Low Salary" as category, count(income) as "accounts_count" from Accounts where income<20000
union all
Select "Average Salary" as category, count(income) as "accounts_count" from Accounts where income >=20000 and income<=50000
union all
Select "High Salary" as category, count(income) as "accounts_count" from Accounts where income > 50000


-- WITH CTE as 
-- (SELECT CASE
--     WHEN income > 50000 THEN 'High Salary'
--     WHEN income < 20000 THEN 'Low Salary'
--     WHEN income>=20000 AND income<=50000 THEN 'Average Salary' 
--     END AS category,  account_id ,income
-- FROM Accounts )
-- ,
-- cte2 as(
-- select 'Low Salary' level
-- union
-- select 'Average Salary'
-- union
-- select 'High Salary'
-- )


-- select level as category, ifnull(count(income),0) as accounts_count 
-- from CTE 
-- right join cte2 on cte.category = cte2.level
-- group by cte2.level;