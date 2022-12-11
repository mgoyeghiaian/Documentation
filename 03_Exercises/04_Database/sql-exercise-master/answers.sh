
******************Joins********************************************

#1. Produce a table that contains, for each employee, his/her name, company name, and company date.
SELECT employees.Name, employees.Company, companies.Date FROM employees,companies WHERE employees.Company = companies.Name;

#2.Find the name of employees that work in companies made before 2000.
SELECT employees.Name FROM companies, employees WHERE employees.Company = companies.Name AND companies.date < 2000;

#3.Find the name of company that has a graphic designer.
SELECT companies.Name FROM employees, companies WHERE employees.Company = companies.Name AND employees.Role='Graphic Designer';

***********************************************************************

