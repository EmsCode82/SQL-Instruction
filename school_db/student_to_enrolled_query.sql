select firstname, lastname, courseid, grade
  from student s
  join enrolled e
    on e.studentID = s.id