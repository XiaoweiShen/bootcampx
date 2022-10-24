select cohorts.name,count(assignment_submissions.*) as total_submissions from cohorts
join students
on students.cohort_id = cohorts.id
join assignment_submissions
on students.id = assignment_submissions.student_id
group by cohorts.name
order by count(assignment_submissions.*) desc;