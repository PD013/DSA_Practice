with rp as (
    select *, DENSE_RANK() OVER (Partition by departmentId order by salary desc) as rp 
    from Employee 
) 

select dp.name as Department, rp.name as Employee, rp.Salary from rp
left join Department as dp 
ON rp.departmentId = dp.id
 where rp <= 3 
 order by dp.name
