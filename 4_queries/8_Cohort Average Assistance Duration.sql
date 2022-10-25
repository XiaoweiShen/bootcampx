select avg(total_duration) as average_total_duration from (
select sum(completed_at-started_at) as total_duration from assistance_requests 
join students on assistance_requests.student_id = students.id
join cohorts on cohorts.id = students.cohort_id
group by cohorts.name
) as foo;