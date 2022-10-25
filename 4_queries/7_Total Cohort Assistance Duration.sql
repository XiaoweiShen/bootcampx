select cohorts.name, sum(completed_at-started_at) as total_duration from assistance_requests 
join students on assistance_requests.student_id = students.id
join cohorts on cohorts.id = students.cohort_id
group by cohorts.name
order by total_duration;