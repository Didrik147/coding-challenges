-- 1527. Patients With a Condition

DROP TABLE IF EXISTS Patients;

CREATE TABLE Patients(
    patient_id int AUTO_INCREMENT PRIMARY KEY,
    patient_name VARCHAR(50),
    conditions VARCHAR(50)
);

INSERT INTO
    Patients(patient_name, conditions)
VALUES
    ('Daniel', 'YFEV COUGH'),
    ('Alice', ''),
    ('Bob', 'DIAB100 MYOP'),
    ('George', 'ACNE DIAB100'),
    ('Alain', 'DIAB201'),
    ('Daniel', 'SADIAB100');

/* Write a solution to find the patient_id, patient_name, and conditions of the patients who have Type I Diabetes. Type I Diabetes always starts with DIAB1 prefix.

Return the result table in any order. */

SELECT patient_id, patient_name, conditions
FROM Patients
WHERE conditions LIKE 'DIAB1%'
	OR conditions LIKE '% DIAB1%';

-- Alternative solution (with REGEXP)
SELECT patient_id, patient_name, conditions
FROM Patients
WHERE conditions REGEXP '\\bDIAB1';

/* \b matches either a non-word character (in this case, a space) or the position before the first character in the string.

Also, you need to escape a backslash with another backslash, hence \\b.
Otherwise, the regular expression will not evaluate. 

P.S. \b also matches the position after the last character, but it does not matter in the context of this problem. */

