-- Fredrik Müller

-- Using MAX
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
-- WHERE salary NOT IN (SELECT MAX(Salary) FROM Employee)
WHERE salary < (SELECT MAX(Salary) FROM Employee)

-- With LIMIT and OFFSET
SELECT (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary