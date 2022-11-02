const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});


// pool.query(`
//   select id, name ,cohort_id from students limit 5;
// `)
// .then(res=>{
//   console.log(res.rows);
// })
// .catch(err=>console.error('query error',err.stack));

const te = process.argv[2];



pool.query(`
select distinct cohorts.name as cohort, teachers.name as teacher
from assistance_requests 
join students on assistance_requests.student_id = students.id
join cohorts on cohorts.id = students.cohort_id
join teachers on assistance_requests.teacher_id = teachers.id 
where cohorts.name = $1
order by teacher;
`,[te])
.then(res=>{
  res.rows.forEach(line=>{
    console.log(`${line.cohort}:${line.teacher}`);
  })
  //console.log(res.rows);
})
.catch(err=>{
    console.error("query error",err.stack)
  });

pool.end();



// pool.query(`
// SELECT students.id as id , students.name as name , cohorts.name as cohort
// FROM students join cohorts on cohort_id = cohorts.id
// where cohorts.name = $1 
// LIMIT $2 ;
// `,[coh,lim])
// .then(res => {
//   //console.log(res.rows);
//   res.rows.forEach(user => {
//     //console.log(user);
//     console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort} cohort`);
//   })
// })
// .catch(err=>{
//   console.error("query error",err.stack)
// });