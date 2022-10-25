select teachers.name as teacher ,cohorts.name as cohort, count(assistance_requests.*) as total_assistances 
from assistance_requests 
join students on assistance_requests.student_id = students.id
join cohorts on cohorts.id = students.cohort_id
join teachers on assistance_requests.teacher_id = teachers.id 
group by teacher,cohort having cohorts.name = 'JUL02'
order by teacher;