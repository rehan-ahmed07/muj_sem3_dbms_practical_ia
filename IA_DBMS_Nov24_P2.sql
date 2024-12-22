-- SQL query to fetch departments with less than four workers
SELECT department, COUNT(*) as number_of_workers
FROM Worker
GROUP BY department
HAVING COUNT(*) < 4;