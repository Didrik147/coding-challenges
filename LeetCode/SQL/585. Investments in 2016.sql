-- Write your PostgreSQL query statement below

-- Frederik Müller
SELECT ROUND(SUM(tiv_2016)::numeric, 2) AS tiv_2016
FROM Insurance
-- have the same tiv_2015 value as one or more other policyholders
WHERE tiv_2015 IN (
  SELECT tiv_2015
  FROM Insurance
  GROUP BY tiv_2015
  HAVING COUNT(*) > 1
)
-- are not located in the same city as any other policyholder (i.e., the (lat, lon) attribute pairs must be unique).
AND (lat, lon) IN (
  SELECT lat, lon
  FROM Insurance
  GROUP BY lat, lon
  HAVING COUNT(*) = 1
)
