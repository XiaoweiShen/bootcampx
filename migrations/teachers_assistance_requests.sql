create table teachers (
  id serial primary key not null,
  name varchar(255) not null,
  is_active boolean default true,
  start_date date,
  end_date date
);

create table assistance_requests (
  id serial primary key not null,
  student_id integer references students(id) on delete cascade,
  teacher_id INTEGER REFERENCES teachers(id) ON DELETE CASCADE,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  created_at TIMESTAMP,
  started_at TIMESTAMP,
  completed_at TIMESTAMP,
  student_feedback TEXT,
  teacher_feedback TEXT
);
