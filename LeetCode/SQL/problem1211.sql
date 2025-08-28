-- 1211. Queries Quality and Percentage
SELECT query_name, 
    ROUND(AVG(rating/position),2) AS quality,
    ROUND(100*SUM(CASE 
        WHEN rating < 3 THEN 1 
        ELSE 0
        END)/COUNT(rating),2) AS poor_query_percentage
FROM Queries
GROUP BY query_name

-- With IF instead of CASE
SELECT query_name, 
    ROUND(AVG(rating/position),2) AS quality,
    ROUND(100*SUM(IF(rating < 3, 1, 0))/COUNT(rating),2) AS poor_query_percentage
FROM Queries
GROUP BY query_name


-- With AVG for both columns
SELECT 
	query_name,
	ROUND(AVG(rating / position), 2) AS quality,
	ROUND(AVG(rating < 3) * 100, 2) AS poor_query_percentage 
FROM 
	Queries
Where
    query_name is not null
GROUP BY 
	query_name