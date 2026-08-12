-- Write your PostgreSQL query statement below
/* SELECT person_name
FROM (
  SELECT turn, person_id, person_name, weight,
    SUM(weight) OVER(ORDER BY turn) AS total_weight
  FROM Queue
  ORDER BY turn
)
WHERE total_weight <= 1000
ORDER BY total_weight DESC
--ORDER BY turn DESC
LIMIT 1 */

-- Based on the solution by Frederik Müller
--SELECT q1.turn, SUM(q2.weight)
SELECT ANY_VALUE(q1.person_name) AS person_name
FROM Queue q1 JOIN Queue q2
ON q1.turn >= q2.turn
GROUP BY q1.turn
HAVING SUM(q2.weight) <= 1000
ORDER BY q1.turn DESC
LIMIT 1
