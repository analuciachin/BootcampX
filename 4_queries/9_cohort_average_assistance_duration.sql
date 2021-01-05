SELECT avg(total_duration_assistance) AS average_total_duration 
FROM (
  SELECT cohorts.name AS cohort,
  sum(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration_assistance

  FROM cohorts
  INNER JOIN students ON cohorts.id = students.cohort_id
  INNER JOIN assistance_requests ON students.id = assistance_requests.student_id
  GROUP BY cohorts.name
  ORDER BY total_duration_assistance
) AS total_durations;