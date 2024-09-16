-- 1633. Percentage of Users Attended a Contest

/* Write a solution to find the percentage of the users registered in each contest rounded to two decimals.

Return the result table ordered by percentage in descending order. In case of a tie, order it by contest_id in ascending order. */

SELECT contest_id, 
    ROUND(100*COUNT(user_id)/(SELECT COUNT(user_id) FROM Users), 2) AS percentage
FROM Register
GROUP BY contest_id
ORDER BY percentage DESC, contest_id;

/* Here I use a subquery (?) to get the number of users.
I was stuck for a while on this task, since I thought I needed to use a SQL JOIN.

Since all the information about the number of users are in the Register table, I only need to use the Users table to get the total number of users.
*/

