SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_student_duration
FROM students JOIN assignment_submissions ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average_student_duration DESC;