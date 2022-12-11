

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


