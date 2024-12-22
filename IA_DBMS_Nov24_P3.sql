-- SQL query to fetch records of workers whose first name's second character is 'i'
SELECT *
FROM Worker
WHERE SUBSTR(first_name, 2, 1) = 'i';