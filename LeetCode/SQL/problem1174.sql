-- Frederik Müller

-- Using CTE
WITH first_orders AS (
    SELECT customer_id, MIN(order_date) AS order_date
    FROM Delivery
    GROUP BY customer_id
)

SELECT ROUND(AVG(Delivery.order_date = customer_pref_delivery_date)*100, 2) AS immediate_percentage
FROM Delivery
JOIN first_orders 
ON Delivery.customer_id = first_orders.customer_id 
AND Delivery.order_date = first_orders.order_date


-- Usng WHERE IN
SELECT ROUND(AVG(Delivery.order_date = customer_pref_delivery_date)*100, 2) AS immediate_percentage
FROM Delivery
WHERE (customer_id, order_date) IN (
    SELECT customer_id, MIN(order_date) AS order_date
    FROM Delivery
    GROUP BY customer_id
)


-- Another solution
SELECT ROUND(AVG(lookup.a)*100, 2) AS immediate_percentage
FROM
(
    SELECT MIN(order_date) = MIN(customer_pref_delivery_date) AS a 
    FROM Delivery
    GROUP BY customer_id
) AS lookup