select count(assistance_requests.*),students.name as total_assistances from assistance_requests 
join students 
on assistance_requests.student_id = students.id
group by students.name having students.name = 'Elliot Dickinson';