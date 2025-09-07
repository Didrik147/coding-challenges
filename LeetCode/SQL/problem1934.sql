-- Frederik Müller

SELECT
    Signups.user_id, 
    -- The COALESCE() function returns the first non-null value in a list.
    COALESCE( ROUND(AVG(CASE WHEN action='confirmed' THEN 1 ELSE 0 END), 2) ) AS confirmation_rate
FROM Signups LEFT JOIN Confirmations
-- ON Signups.user_id = Confirmations.user_id
USING (user_id)
GROUP BY Signups.user_id