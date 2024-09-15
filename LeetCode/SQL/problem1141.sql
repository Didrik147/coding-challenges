-- 1141. User Activity for the Past 30 Days I


SELECT activity_date AS day, COUNT(DISTINCT user_id) as active_users
FROM Activity
WHERE DATEDIFF('2019-07-27', activity_date) BETWEEN 0 AND 29
GROUP BY activity_date;

/* I choose between 0 and 29 because e.g.
between 2019-07-24 and 2019-07-27 there are 2 days,
since we include the start date and end date (27-24+1).

I use 0 because if the value is negative, we have surpassed 2019-07-27 */


-- Another solution would be to use DATE_ADD
SELECT activity_date AS day, COUNT(DISTINCT user_id) as active_users
FROM Activity
WHERE activity_date BETWEEN 
    DATE_ADD('2019-07-27', INTERVAL -29 DAY)
    AND '2019-07-27'
GROUP BY activity_date;


-- This also works (without BETWEEN)
SELECT activity_date AS day, COUNT(DISTINCT user_id) as active_users
FROM Activity
WHERE DATEDIFF('2019-07-27', activity_date) >= 0 
    AND DATEDIFF('2019-07-27', activity_date) < 30
GROUP BY activity_date;