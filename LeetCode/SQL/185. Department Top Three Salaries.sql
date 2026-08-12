-- Write your PostgreSQL query statement below
SELECT 
  D.name AS Department, 
  E.name AS Employee, 
  E.salary AS Salary
FROM (
  SELECT departmentId, name, salary,
    DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS salary_rank
  FROM Employee
) AS E
JOIN Department AS D
ON E.departmentId = D.id
WHERE salary_rank <= 3
ORDER BY Salary DESC
