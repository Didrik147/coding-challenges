DROP TABLE IF EXISTS World;

CREATE TABLE World(
    name        varchar(50),
    continent   varchar(50),
    area        int,
    population  int,
    gdp         bigint,
    PRIMARY KEY (name)
);


INSERT INTO World(name, continent, area, population, gdp) VALUES
	('Afghanistan', 'Asia', 652230, 25500100, 20343000000),
	('Albania', 'Europe', 28748, 2831741, 12960000000),
	('Algeria', 'Africa', 2381741, 37100000, 188681000000),
	('Andorra', 'Europe', 468, 78115, 3712000000),
	('Angola', 'Africa', 1246700, 20609294, 100990000000);


/* Write a solution to find the name, population, and area of the big countries. */
SELECT name, population, area 
FROM World
WHERE area >= 3000000 OR population >= 25000000;


-- Kunne evt. brukt union, slik:
SELECT name, population, area
FROM World
WHERE area >= 3000000 

UNION

SELECT name, population, area
FROM World
WHERE population >= 25000000

-- Dette kan være raskere i noen tilfeller