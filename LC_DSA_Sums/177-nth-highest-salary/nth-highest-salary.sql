CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  SET N = N-1;
  RETURN (
        SELECT DISTINCT salary
        From Employee 
        ORDER BY Salary DESC
        LIMIT 1 OFFSET N
);
END

-- distinct is used to remove duplicates from the final table. duplicates will mess up the offset. See below example.

-- id1, salary 100
-- id2, salary 100

-- 1st highest salary in this case is 100
-- 2nd highest salary in this case is null (since both are 100).

-- without distinct we will get,

-- 1st highest salary as 100 <- correct
-- 2nd highest salary as 100 <- incorrect, should be null

-- with distinct we will get,

-- 1st highest salary as 100 <- correct
-- 2nd highest salary as null <- correct