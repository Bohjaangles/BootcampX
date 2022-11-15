SELECT teachers.name AS teacher, cohorts.name AS cohort, COUNT(assistance_requests.*) AS total_assistances
FROM assistance_requests 
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id  
GROUP BY cohorts.name, teachers.name
HAVING cohorts.name = 'JUL02'
ORDER BY teachers.name; 


--AND teachers.name IN assistance_requests.teacher_id;