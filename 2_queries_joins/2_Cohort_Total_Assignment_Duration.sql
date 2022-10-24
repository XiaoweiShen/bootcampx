select sum(duration) as total_duration from assignment_submissions 
join students 
on assignment_submissions.student_id = students.id 
join cohorts 
on students.cohort_id = cohorts.id 
where cohorts.name = 'FEB12';