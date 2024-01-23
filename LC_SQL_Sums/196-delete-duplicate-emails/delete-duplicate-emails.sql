# Write your MySQL query statement below
delete p
from Person p
cross join Person p2
where p.Email = p2.Email and p.id > p2.Id
