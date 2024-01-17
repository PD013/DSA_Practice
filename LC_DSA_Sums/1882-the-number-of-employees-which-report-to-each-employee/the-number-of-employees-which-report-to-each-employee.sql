# Write your MySQL query statement below
select e.employee_id, 
    e.name, 
    count(r.employee_id) reports_count, 
    ROUND(avg(r.age), 0) average_age
from Employees e 
inner join Employees r on e.employee_id = r.reports_to
group by e.employee_id, e.name
order by e.employee_id
