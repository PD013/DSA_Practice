# Write your MySQL query statement below
-- SELECT employee_id 
-- FROM Employees
-- WHERE salary < 30000
-- AND employee_id in (SELECT employee_id Employees WHERE manager_id is NOT NULL )

SELECT employee_id FROM Employees WHERE salary < 30000 
AND 
manager_id not in (SELECT DISTINCT employee_id from Employees)
ORDER BY employee_id