-- 1978. Employees Whose Manager Left the Company

DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees (
    employee_id int PRIMARY KEY,
    name varchar(50),
    manager_id int,
    salary int
);

INSERT INTO Employees VALUES
    ( 9           , 'Kamiyah' , 2          , 65859  ),
( 14          , 'Russell' , 10         , 86740  ),
( 11          , 'Roger'   , 7          , 85366  ),
( 15          , 'Alyson'  , null       , 91743  ),
( 17          , 'Elyse' , 12         , 10115  ),
( 3           , 'Alivia' , null       , 53679  ),
( 1           , 'Reign' , null       , 77731  ),
( 7           , 'Brooks' , 11         , 89386  ),
( 8           , 'Ryland' , 12         , 61431  ),
( 13          , 'Charlee' , null       , 41084  );


/* Find the IDs of the employees whose salary is strictly less than $30000 and whose manager left the company. When a manager leaves the company, their information is deleted from the Employees table, but the reports still have their manager_id set to the manager that left.

Return the result table ordered by employee_id. */


/* Find the employees with a salary less than 30000 */
SELECT employee_id
FROM Employees
WHERE salary < 30000
AND manager_id NOT IN (
    /* Managers which still works in the company */
    SELECT M.employee_id
    FROM Employees AS E, Employees AS M
    WHERE M.employee_id = E.manager_id
)
ORDER BY employee_id;


-- Better/cleaner solution
SELECT employee_id
FROM Employees
WHERE salary < 30000
AND manager_id NOT IN (
    /* The manager has to be an employee */
    SELECT employee_id FROM Employees
)
ORDER BY employee_id;


-- Solution using JOIN
SELECT E.employee_id
FROM Employees AS E LEFT OUTER JOIN Employees AS M
    ON E.manager_id = M.employee_id
WHERE E.salary < 30000 
    AND M.employee_id IS NULL 
    AND E.manager_id IS NOT NULL
ORDER BY E.employee_id;
