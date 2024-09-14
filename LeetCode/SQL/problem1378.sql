--1378. Replace Employee ID With The Unique Identifier

CREATE TABLE IF NOT EXISTS Employees(
	id  int,
	name  varchar(50),
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS EmployeeUNI(
	id  int,
	unique_id int,
	PRIMARY KEY (id, unique_id)
);

INSERT INTO Employees(id, name) VALUES
	(1, 'Alice'),
	(7, 'Bob'),
	(11, 'Meir'),
	(90, 'Winston'),
	(3, 'Jonathan');

INSERT INTO EmployeeUNI(id, unique_id) VALUES
	(3, 1),
    (11, 2),
    (90, 3);



/* Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null. */
SELECT unique_id, name 
FROM employees LEFT OUTER JOIN employeeuni
	ON employees.id = employeeUNI.id;