select teachers.name as teacher, students.name as student, assignments.name as assignment, (assistance_requests.completed_at-assistance_requests.started_at ) as duration from assistance_requests 
left join students on assistance_requests.student_id = students.id
left join teachers on assistance_requests.teacher_id = teachers.id
left join assignments on assistance_requests.assignment_id = assignments.id
order by duration;