SELECT students.name, COUNT(assistance_requests.*) as total_assistance
FROM students
INNER JOIN assistance_requests ON students.id = assistance_requests.student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;