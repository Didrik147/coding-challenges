-- 1731. The Number of Employees Which Report to Each Employee

/* For this problem, we will consider a manager an employee who has at least 1 other employee reporting to them.

Write a solution to report the ids and the names of all managers, the number of employees who report directly to them, and the average age of the reports rounded to the nearest integer.

Return the result table ordered by employee_id. */

SELECT M.employee_id, M.name, 
    COUNT(DISTINCT E.employee_id) AS reports_count, 
    ROUND(AVG(E.age),0) AS average_age
FROM Employees AS E, Employees AS M
WHERE E.reports_to = M.employee_id
GROUP BY M.employee_id