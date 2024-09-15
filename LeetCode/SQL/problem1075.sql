-- 1075. Project Employees I

DROP TABLE Employee;
DROP TABLE Project;

CREATE TABLE Project (
    project_id int,
    employee_id int,
    PRIMARY KEY (project_id, employee_id)
);

CREATE TABLE Employee (
    employee_id int,
    name varchar(50),
    experience_years int
);

INSERT INTO Project VALUES 
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 4);

INSERT INTO Employee VALUES 
    (1, 'Khaled', 3),
    (2, 'Ali', 2),
    (3, 'John', 1),
    (4, 'Doe', 2);


/* Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.

Return the result table in any order. */
SELECT project_id, 
	ROUND(SUM(E.experience_years)/COUNT(E.experience_years), 2) AS average_years
FROM Project AS P INNER JOIN Employee AS E
	ON P.employee_id = E.employee_id
GROUP BY P.project_id

-- I could have used AVG instead