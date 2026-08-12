-- Write your PostgreSQL query statement below
WITH all_ids AS (
  (SELECT requester_id AS id
  FROM RequestAccepted)
  UNION ALL
  (SELECT accepter_id AS id
  FROM RequestAccepted)
)

/* SELECT id, COUNT(id) AS num
FROM all_ids
GROUP BY id
ORDER BY num DESC
LIMIT 1 */

SELECT id, num
FROM (
  SELECT 
    id, 
    COUNT(id) AS num,
    RANK() OVER(ORDER BY COUNT(id) DESC) AS rnk
  FROM all_ids
  GROUP BY id
)
WHERE rnk = 1
