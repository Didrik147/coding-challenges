-- 620. Not Boring Movies

CREATE TABLE Cinema(
    id int PRIMARY KEY,
    movie varchar(50),
    description varchar(50),
    rating float
);

INSERT INTO Cinema(id, movie, description, rating) VALUES
	(1, 'War', 'great3D', 8.9),
	(2, 'Science', 'fiction', 8.5),
	(3, 'irish', 'boring', 6.2),
	(4, 'Icesong', 'Fantacy', 8.6),
	(5, 'Housecard', 'Interesting', 9.1);

/* Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".

Return the result table ordered by rating in descending order. */
SELECT * FROM Cinema
WHERE MOD(id, 2) != 0
	AND description != 'boring'
ORDER BY rating DESC;
