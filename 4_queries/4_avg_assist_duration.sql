SELECT cohorts.name as name, avg(completed_at-started_at) as average_assistance_time
FROM students
JOIN cohorts on cohorts.id = cohort_id
JOIN assistance_requests on assistance_requests.student_id = students.id
GROUP BY cohorts.name
ORDER BY average_assistance_time;
