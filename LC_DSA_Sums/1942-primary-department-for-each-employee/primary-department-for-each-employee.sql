# Write your MySQL query statement below
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y' OR employee_id in (
    SELECT employee_id # This finds employee who has only one department
    FROM Employee # And employee with only one dep will have flag = N 
    GROUP BY employee_id 
    HAVING COUNT(*) = 1 
)
GROUP BY employee_id