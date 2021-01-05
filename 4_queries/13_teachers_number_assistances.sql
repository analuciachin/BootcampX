SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort,
COUNT(assistance_requests.*) AS total_assistances

FROM teachers
INNER JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
INNER JOIN students ON assistance_requests.student_id = students.id
INNER JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;