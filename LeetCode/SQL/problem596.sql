-- 596. Classes More Than 5 Students

/* Write a solution to find all the classes that have at least five students.

Return the result table in any order. */

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5

/* I first tried to use WHERE, but that did not work.
The reason is because WHERE is connected to rows, not groups.
HAVING is what should be used together with GROUP BY. 

If I want to use WHERE, it can be done in this way using subqueries:
*/

SELECT class FROM
(SELECT class, COUNT(DISTINCT student) AS c
FROM Courses
GROUP BY class) AS temp
WHERE c >= 5;