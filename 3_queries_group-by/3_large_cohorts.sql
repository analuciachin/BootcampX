SELECT cohorts.name AS cohort_name, COUNT(students.*) AS students_count
FROM cohorts INNER JOIN students
ON cohorts.id = students.cohort_id
GROUP BY cohort_name
HAVING COUNT(students.*) >= 18
ORDER BY students_count;