-- Write your PostgreSQL query statement below

-- LEFT JOIN with ON
/* SELECT A.product_id, A.first_year, B.quantity, B.price
FROM
(
  SELECT product_id, MIN(year) AS first_year
  FROM Sales
  GROUP BY product_id
) AS A
LEFT JOIN (
  SELECT product_id, year, quantity, price
  FROM Sales
) AS B
ON A.product_id = B.product_id
AND A.first_year = B.year */

-- JOIN with USING
/* SELECT A.product_id, A.year AS first_year, B.quantity, B.price
FROM
(
  SELECT product_id, MIN(year) AS year
  FROM Sales
  GROUP BY product_id
) AS A
JOIN (
  SELECT product_id, year, quantity, price
  FROM Sales
) AS B
USING (product_id, year) */

-- Frederik Müller (will not work in GoogleSQL)
SELECT product_id, year AS first_year, quantity, price
FROM Sales
WHERE (product_id, year) IN (
  SELECT product_id, MIN(year) AS year
  FROM Sales
  GROUP BY product_id
)
