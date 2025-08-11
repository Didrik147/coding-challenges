
SELECT name
FROM Employee
WHERE id IN
(
  SELECT managerId
  FROM Employee
  GROUP BY managerId
  HAVING COUNT(*) >= 5
)

-- Alternative solution
SELECT e.name
FROM Employee AS e
JOIN Employee AS m ON e.id = m.managerId
GROUP BY m.managerId
HAVING COUNT(m.managerID) >= 5