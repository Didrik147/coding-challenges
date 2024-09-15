-- 197. Rising Temperature
CREATE TABLE Weather(
    id int PRIMARY KEY,
    recordDate date,
    temperature int
);

INSERT INTO
    Weather
VALUES
    (1, '2015-01-01', 10),
    (2, '2015-01-02', 25),
    (3, '2015-01-03', 20),
    (4, '2015-01-04', 30);

/* Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
 
 Return the result table in any order. */

SELECT W1.id
FROM Weather AS W1, Weather AS W2
WHERE DATEDIFF(W1.recordDate, W2.recordDate) = 1 
	AND W1.temperature > W2.temperature

-- Same solution
SELECT W2.id
FROM Weather AS W1, Weather AS W2
WHERE DATEDIFF(W1.recordDate, W2.recordDate) = -1 
	AND W2.temperature > W1.temperature