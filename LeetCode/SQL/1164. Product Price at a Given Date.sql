/* WITH L AS (
  SELECT 
    product_id, 
    new_price,
    change_date,
    RANK() OVER (
      PARTITION BY product_id
      ORDER BY change_date DESC
    ) AS rank
  FROM Products
  WHERE change_date <= '2019-08-16'
  ORDER BY product_id
)
 */
/* SELECT 
  DISTINCT P.product_id, 
  COALESCE(L.new_price, 10) AS price
FROM Products AS P
LEFT JOIN L
ON P.product_id = L.product_id
AND L.rank = 1 */

/* SELECT 
  DISTINCT product_id, 
  10 AS price
FROM Products
WHERE product_id NOT IN (
  SELECT product_id
  FROM Products
  WHERE change_date <= '2019-08-16'
)
UNION
(
  SELECT product_id, new_price
  FROM L
  WHERE rank = 1
) */

/* 
-- Frederik Müller
SELECT 
  DISTINCT Products.product_id,
  COALESCE(latest_prices.new_price, 10) AS price
FROM Products
LEFT JOIN 
  (-- latest prices
  SELECT product_id, new_price
  FROM Products
  WHERE (product_id, change_date) IN
  (
    -- latest_price_change
    SELECT product_id, MAX(change_date) AS change_date
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
  )
) AS latest_prices
ON Products.product_id = latest_prices.product_id */

WITH unique_products AS (
  SELECT DISTINCT product_id
  FROM Products
),
latest_prices AS (
  SELECT 
    DISTINCT product_id,
    FIRST_VALUE (new_price) OVER (
      PARTITION BY product_id ORDER BY change_date DESC
    ) AS last_price
    FROM Products
    WHERE change_date <= '2019-08-16'
)

SELECT U.product_id, COALESCE(last_price, 10) AS price
FROM unique_products AS U
LEFT JOIN latest_prices AS L
ON U.product_id = L.product_id

