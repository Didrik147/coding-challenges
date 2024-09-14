-- 1581. Customer Who Visited but Did Not Make Any Transactions

CREATE TABLE Visits (
    visit_id INT PRIMARY KEY,
    customer_id INT
);

CREATE TABLE Transactions (
    transaction_id INT,
    visit_id INT,
    amount INT,
    PRIMARY KEY (transaction_id),
    FOREIGN KEY (visit_id) REFERENCES Visits(visit_id)
);

INSERT INTO Visits(visit_id, customer_id) VALUES
	(1, 23),
	(2, 9),
	(4, 30),
	(5, 54),
	(6, 96),
	(7, 54),
	(8, 54);

INSERT INTO Transactions( transaction_id , visit_id , amount) VALUES
	(2, 5, 310),
	(3, 5, 300),
	(9, 5, 200),
	(12, 1, 910),
	(13, 2, 970);


/* Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

Return the result table sorted in any order. */

SELECT V.customer_id, COUNT(v.visit_id) AS count_no_trans
FROM Visits as V LEFT OUTER JOIN Transactions as T 
ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
GROUP BY V.customer_id
ORDER BY count_no_trans DESC

/* The idea is to join the tables, and locate the rows in which the transaction_id is NULL (count have used visit_id or amount instead) 

After that, we group by the customer_id of the visitors and count the number of rows for each customer_id.
I use COUNT(V.visit_id), but COUNT(*) give me the same result.

Finally, we order by the count to get the highest number first.
*/