SELECT cohorts.name AS cohort_name,
avg(completed_at - started_at) AS average_assistance_time

FROM cohorts
INNER JOIN students ON students.cohort_id = cohorts.id
INNER JOIN assistance_requests ON students.id = assistance_requests.student_id

GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;
