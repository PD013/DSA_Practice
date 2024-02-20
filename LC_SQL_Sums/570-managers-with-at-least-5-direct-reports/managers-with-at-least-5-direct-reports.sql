SELECT  e1.name 
FROM employee e1
LEFT JOIN employee e2 
ON e1.id = e2.managerId
GROUP BY e1.id
HAVING count(e2.id) >= 5;
-- -- Exactly! When you use `HAVING` without `GROUP BY`, it considers the entire result set as a single group. The condition specified in `HAVING` is applied to the aggregate result of the entire set. As soon as one row in that result set satisfies the condition, the result is returned, and further checking is halted.
-- In your case, without `GROUP BY`, it checks if there is any manager (considering the entire result set as one) with at least five direct reports. Once it finds such a manager, it returns the result, and it doesn't continue checking for other managers.

-- On the other hand, when you use `GROUP BY`, it evaluates the condition for each group (each manager in this context) separately. It allows you to filter managers based on the count of their direct reports within their specific group, and you can get a list of all managers who satisfy the condition.


