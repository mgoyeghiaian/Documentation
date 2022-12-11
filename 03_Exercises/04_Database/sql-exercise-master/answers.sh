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


