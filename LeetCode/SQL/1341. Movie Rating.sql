-- My solution
(SELECT U.name AS results
FROM Users AS U
JOIN MovieRating AS MR
ON U.user_id = MR.user_id
GROUP BY U.name
ORDER BY COUNT(MR.rating) DESC, U.name
LIMIT 1)

UNION ALL

(SELECT M.title AS results
FROM Movies AS M
JOIN MovieRating AS MR
ON M.movie_id = MR.movie_id
WHERE (MR.created_at >= '2020-02-01' AND MR.created_at < '2020-03-01')
GROUP BY M.title
ORDER BY AVG(MR.rating) DESC, M.title
LIMIT 1)


-- Frederik Müller
SELECT name AS results FROM
(SELECT user_id, name, COUNT(*)
FROM Users JOIN MovieRating USING (user_id)
GROUP BY 1, 2
ORDER BY 3 DESC, 2
LIMIT 1) users

UNION ALL

SELECT title AS results FROM 
(SELECT movie_id, title, AVG(rating)
FROM Movies JOIN MovieRating USING(movie_id)
-- WHERE created_at BETWEEN '2020-02-01' AND '2020-02-29'
-- WHERE LEFT(created_at, 7) = '2020-02'
WHERE DATE_FORMAT(created_at, '%Y-%m') = '2020-02'
GROUP BY 1, 2
ORDER BY 3 DESC, 2
LIMIT 1) movies