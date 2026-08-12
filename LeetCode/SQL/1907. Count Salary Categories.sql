-- Write your PostgreSQL query statement below
/* SELECT C.category, COUNT(A.account_id) AS accounts_count
FROM 
(
  SELECT 'High Salary' AS category
  UNION
  SELECT 'Average Salary' AS category
  UNION
  SELECT 'Low Salary' AS category
) AS C
LEFT JOIN
(
  SELECT 
    account_id, 
    income,
    CASE 
      WHEN income < 20000 THEN 'Low Salary'
      WHEN income > 50000 THEN 'High Salary'
      ELSE 'Average Salary'
    END AS category
  FROM Accounts
) AS A
ON C.category = A.category
GROUP BY C.category */

(
  SELECT 
    'Low Salary' AS category, 
    SUM(CASE WHEN income < 20000 THEN 1 ELSE 0 END) AS accounts_count
  FROM Accounts
)
UNION
(
  SELECT 
    'Average Salary' AS category, 
    SUM(CASE WHEN income BETWEEN 20000 AND 50000 THEN 1 ELSE 0 END) AS accounts_count
  FROM Accounts
)
UNION
(
  SELECT 
    'High Salary' AS category, 
    SUM(CASE WHEN income > 50000 THEN 1 ELSE 0 END) AS accounts_count
  FROM Accounts
)

