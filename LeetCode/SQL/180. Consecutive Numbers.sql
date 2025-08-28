-- Frederik Müller
SELECT DISTINCT a.num AS ConsecutiveNums
FROM Logs a
JOIN Logs b ON a.id = b.id + 1 AND a.num = b.num
JOIN Logs c ON a.id = c.id + 2 AND a.num = c.num

-- Everyday Data Science
WITH cte AS (
    SELECT num, 
    LEAD(num, 1) OVER() AS next_1,
    LEAD(num, 2) OVER() AS next_2
    FROM logs
)

SELECT DISTINCT num AS ConsecutiveNums
FROM cte
WHERE num = next_1
AND num = next_2

-- Code with Carter
SELECT DISTINCT num AS ConsecutiveNums
FROM (
    SELECT 
        num,
        LEAD(num) OVER() AS b, -- before
        LAG(num) OVER() AS a -- after
    FROM Logs
)
WHERE num = b AND num = a