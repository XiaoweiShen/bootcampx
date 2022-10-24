select students.name as student,avg(assignment_submissions.duration) as average_assignment_druation from students 
join assignment_submissions on students.id = assignment_submissions.student_id
where  students.end_date is null
group by students.name
order by avg(assignment_submissions.duration) desc;