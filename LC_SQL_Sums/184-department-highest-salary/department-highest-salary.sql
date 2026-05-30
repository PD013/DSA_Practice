# Write your MySQL query statement below
with ranking as (
    select id , RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) as ranks 
    from Employee 
) 

select dp.name as Department 
      , ep.name as Employee
      , ep.salary  as Salary
from 
Employee ep
left join Department dp
ON ep.departmentId = dp.id 
where ep.id in (select id from ranking where ranks = 1)