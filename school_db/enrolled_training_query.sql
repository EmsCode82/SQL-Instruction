SELECT * FROM enrolled
 order by studentID;
 
 select * from student
 where id = 4;
 
 select * from course
 where id in (1002, 1007, 1005);
 
 select firstname, lastname, courseid, grade
 from student s
 join enrolled e
   on e.studentID = s.id