-- SELF JOIN
/* SELECT 
  a.visited_on,
  SUM(amount) AS amount,
  ROUND(SUM(amount)/7.0, 2) AS average_amount
FROM
(SELECT DISTINCT visited_on FROM customer) AS a 
JOIN customer AS b
ON (a.visited_on - b.visited_on) BETWEEN 0 AND 6
GROUP BY a.visited_on
HAVING COUNT(DISTINCT b.visited_on) = 7
ORDER BY a.visited_on */

-- Window functions
WITH daily_sums AS (
  SELECT visited_on, SUM(amount) AS daily_sum
  FROM Customer
  GROUP BY visited_on
  ORDER BY visited_on
)

SELECT 
  visited_on,
  SUM(daily_sum) OVER (ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount,
  ROUND(AVG(daily_sum) OVER (ROWS BETWEEN 6 PRECEDING AND CURRENT ROW), 2) AS average_amount
FROM daily_sums
OFFSET 6

