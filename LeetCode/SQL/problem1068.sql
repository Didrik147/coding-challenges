-- 1068. Product Sales Analysis I

/* Write a solution to report the product_name, year, and price for each sale_id in the Sales table.

Return the resulting table in any order. */

SELECT P.product_name, S.year, S.price
FROM Sales AS S, Product AS P
WHERE P.product_id = S.product_id

-- Alternativ løsning ved å bruke INNER JOIN
SELECT P.product_name, S.year, S.price
FROM Sales AS S INNER JOIN Product AS P
    ON P.product_id = S.product_id