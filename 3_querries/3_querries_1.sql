SELECT day, COUNT(assignments.id)
FROM assignments
GROUP BY day
ORDER BY day;