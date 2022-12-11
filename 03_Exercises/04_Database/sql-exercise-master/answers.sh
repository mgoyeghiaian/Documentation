*************Basic Queries****************************************
#1. GET ALL THE NAMES OF STUDENTS IN THE DATABASE
SELECT * FROM `students`

#2. GET ALL THE DATA OF STUDENTS ABOVE 30 YEARS OLD
SELECT * FROM `students` WHERE age>30

#3. GET THE NAMES OF THE FEMALES WHO ARE 30 YEARS OLD
SELECT * FROM students WHERE Gender="F" AND Age = 30

#4. GET THE NUMBER OF POINTS OF ALEX
SELECT Points FROM students WHERE name="Alex"

#5. ADD YOURSELF AS A NEW STUDENT (YOUR NAME, YOUR AGE...)
INSERT INTO students (Name,Age,Gender,Points)
VALUES ("Mgo","25","M","600")

#6. INCREASE THE POINTS OF BASMA BECAUSE SHE SOLVED A NEW EXERCISE 
UPDATE students SET Points = Points +200 WHERE name="Basma"

#7. DECREASE THE POINTS OF ALEX BECAUSE HE'S LATE TODAY 8
UPDATE students SET Points = Points -8 WHERE name="Alex"
**************************************************************************

******************Creating Table********************************************
# 1. Create a table graduates
CREATE TABLE "graduates" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER,
	"Gender"	TEXT,
	"Points"	INTEGER,
	"Graduation"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);

#2.Copy Layal's data from students to graduates

INSERT INTO graduates(ID,name,Age,Gender,Points)
SELECT * FROM students WHERE ID = 4

#3.Add the graduation date previously mentioned to Layal's record in graduates
UPDATE graduates
SET Graduation = '08/09/2018'
WHERE ID = 4;


#4. Remove Layal's record from students
DELETE FROM students WHERE ID = 4;
*******************************************************************

******************Joins********************************************

#1. Produce a table that contains, for each employee, his/her name, company name, and company date.
SELECT employees.Name, employees.Company, companies.Date FROM employees,companies WHERE employees.Company = companies.Name;

#2.Find the name of employees that work in companies made before 2000.
SELECT employees.Name FROM companies, employees WHERE employees.Company = companies.Name AND companies.date < 2000;

#3.Find the name of company that has a graphic designer.
SELECT companies.Name FROM employees, companies WHERE employees.Company = companies.Name AND employees.Role='Graphic Designer';

***********************************************************************

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

*********************************************************************************