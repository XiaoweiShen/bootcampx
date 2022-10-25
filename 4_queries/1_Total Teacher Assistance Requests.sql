select count(*) as total_assistances,teachers.name 
from assistance_requests
join teachers 
on teachers.id = assistance_requests.teacher_id
group by teachers.name 
having teachers.name = 'Waylon Boehm';