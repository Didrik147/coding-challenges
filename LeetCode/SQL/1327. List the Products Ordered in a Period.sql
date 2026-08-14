-- Write your PostgreSQL query statement below
SELECT 
  P.product_name,
  SUM(O.unit) AS unit
FROM Orders AS O
JOIN Products AS P
--ON O.product_id = P.product_id
USING (product_id)
--WHERE DATE_TRUNC('month', O.order_date) = '2020-02-01'
WHERE (O.order_date >= '2020-02-01' AND O.order_date < '2020-03-01')
GROUP BY P.product_name
HAVING SUM(O.unit) >= 100
