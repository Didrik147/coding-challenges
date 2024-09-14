-- 584. Find Customer Referee

DROP TABLE Customer;

CREATE TABLE Customer(
    id          int,
    name        varchar(50),
    referee_id  int,
    PRIMARY KEY (id)
);

INSERT INTO Customer(id, name, referee_id) VALUES
	(1,'Will',null),
	(2,'Jane',null),
	(3,'Alex',2),
	(4,'Bill',null),
	(5,'Zack',1),
	(6,'Mark',2);


/* Find the names of the customer that are not referred by the customer with id = 2. */
SELECT name
FROM Customer
WHERE referee_id <> 2 OR referee_id IS NULL;