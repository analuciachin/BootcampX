SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM teachers
INNER JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
INNER JOIN students ON assistance_requests.student_id = students.id
INNER JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teachers.name;