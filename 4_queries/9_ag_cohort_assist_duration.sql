SELECT avg(total_duration) as average_total_duration
FROM (SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
FROM students
JOIN cohorts on cohorts.id = cohort_id
JOIN assistance_requests on assistance_requests.student_id = students.id
GROUP BY cohorts.name
ORDER BY total_duration)
as total_duration;