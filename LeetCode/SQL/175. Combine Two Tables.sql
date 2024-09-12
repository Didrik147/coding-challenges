-- Delete the tables if they exist
DROP TABLE IF EXISTS Address;
DROP TABLE IF EXISTS Person;


-- Create new tables if they do not exist
CREATE TABLE IF NOT EXISTS Person(
    personId    INT,
    lastName    VARCHAR(50),
    firstName   VARCHAR(50),
    PRIMARY KEY (personId)
);

CREATE TABLE IF NOT EXISTS Address(
    addressId   INT,
    personId    INT,
    city        VARCHAR(50),
    state      VARCHAR(50),
    PRIMARY KEY (addressId)
);

/* Kan ikke ha med foreign key i denne oppgaven,
da det fører til at det blir feilmelding med tanke på utfylling
av Address tabellen. */


-- Insering value into tables
INSERT INTO Person(personId, lastName, firstName) VALUES
    (1, 'Wang', 'Allen'),
    (2, 'Alice', 'Bob');

INSERT INTO Address(addressId, personId, city, state) VALUES
    (1, 2, 'New York City', 'New York'),
    (2, 3, 'Leetcode', 'California');



/* Write a solution to report the first name, last name, city, and state of each person in the Person table. If the address of a personId is not present in the Address table, report null instead. */
SELECT P.firstName, P.lastName, A.city, A.state
FROM Person AS P LEFT OUTER JOIN Address AS A
	ON P.personId = A.personId;