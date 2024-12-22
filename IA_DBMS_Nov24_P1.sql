-- SQL query to fetch details of Workers who joined in February 2014
SELECT *
FROM Worker
WHERE YEAR(join_date) = 2014 AND MONTH(join_date) = 2;