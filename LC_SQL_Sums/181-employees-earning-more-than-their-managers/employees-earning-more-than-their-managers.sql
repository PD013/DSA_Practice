# Write your MySQL query statement below
select ep1.name as Employee from employee as ep1 
left join employee as ep2 
on ep1.managerID = ep2.id 
where ep1.salary > ep2.salary