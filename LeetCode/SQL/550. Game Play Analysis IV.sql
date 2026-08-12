-- Write your PostgreSQL query statement below
/* SELECT ROUND(COUNT(B.player_id)*1.0/COUNT(A.player_id), 2) AS fraction
FROM 
  (SELECT player_id, MIN(event_date) AS event_date
  FROM Activity
  GROUP BY player_id) AS A
LEFT JOIN Activity B 
ON A.player_id = B.player_id 
AND (A.event_date+1) = B.event_date
 */

/* WITH M AS (
  SELECT player_id, MIN(event_date) AS min_date
  FROM Activity
  GROUP BY player_id
),
N AS (
  SELECT player_id, event_date
  FROM Activity
)

SELECT ROUND(COUNT(N.player_id)*1.0/COUNT(M.player_id), 2) AS fraction
FROM M
LEFT JOIN N
ON M.player_id = N.player_id
AND (M.min_date+1) = N.event_date */

SELECT ROUND(1.0*COUNT(player_id)/(SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction
FROM Activity
WHERE (player_id, event_date) IN (
  SELECT player_id, MIN(event_date)+1
  FROM Activity
  GROUP BY player_id
)