-- 1251. Average Selling Price
DROP TABLE UnitsSold;
DROP TABLE Prices;

CREATE TABLE Prices(
	product_id int,
	start_date date,
	end_date date,
	price int,
	PRIMARY KEY (product_id, start_date, end_date)
);

CREATE TABLE UnitsSold(
	product_id int,
	purchase_date date,
	units int
);

INSERT INTO
	Prices
VALUES
	(1, '2019-02-17', '2019-02-28', 5),
	(1, '2019-03-01', '2019-03-22', 20),
	(2, '2019-02-01', '2019-02-20', 15),
	(2, '2019-02-21', '2019-03-31', 30);

INSERT INTO
	UnitsSold
VALUES
	(1, '2019-02-25', 100),
	(1, '2019-03-01', 15),
	(2, '2019-02-10', 200),
	(2, '2019-03-22', 30);

/* Write a solution to find the average selling price for each product. average_price should be rounded to 2 decimal places. If a product does not have any sold units, its average selling price is assumed to be 0.
 
Return the result table in any order. */

SELECT P.product_id, 
	ROUND(SUM(P.price * U.units)/SUM(U.units), 2) AS average_price
FROM Prices AS P INNER JOIN UnitsSold AS U
	ON P.product_id = U.product_id
    WHERE U.purchase_date BETWEEN P.start_date AND P.end_date
    GROUP BY P.product_id

-- Må legge til dette for å klare en test case, men logikken blir feil.
-- Hvorfor skal en vare som ikke bli solgt ha en gjennomsnittlig pris på 0?
UNION

SELECT product_id, 0 AS average_price
FROM Prices
WHERE product_id NOT IN (SELECT product_id FROM UnitsSold);