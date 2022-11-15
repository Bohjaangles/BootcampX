SELECT day, COUNT(assignments.id) AS total_assignments
FROM assignments
GROUP BY day
HAVING COUNT(assignments.id) > 9
ORDER BY day;