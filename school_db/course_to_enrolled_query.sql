select subject, name, credits, quarter, studentID, grade
  from course c
  join enrolled e
    on c.id = e.courseID;