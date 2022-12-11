
**************Count & Filter*******************************************

#1.Find the person with the highest number of points in students.
SELECT Name FROM students WHERE Points = (SELECT max(Points) FROM students);

#2.Find the average of points in students
SELECT AVG(Points) FROM students;

#3.Find the number of students that have 500 points
SELECT count(*) FROM students WHERE Points = 500;

#4. Find the names of students that contains 's'
select Name from students where name like '%s%';

#5.Find all students based on the decreasing order of their points
SELECT Name FROM students ORDER BY Points DESC;
