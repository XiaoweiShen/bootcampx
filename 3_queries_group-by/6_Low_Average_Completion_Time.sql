select students.name as student,avg(assignment_submissions.duration) as average_assignment_druation, avg(assignments.duration) as average_estimated_duration from students 
join assignment_submissions on students.id = assignment_submissions.student_id
join assignments on assignment_submissions.assignment_id = assignments.id
where  students.end_date is null  
group by students.name having avg(assignment_submissions.duration) < avg(assignments.duration)
order by avg(assignment_submissions.duration);