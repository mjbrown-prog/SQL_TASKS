# SQL_TASKS

# Introduction

We are going to be looking at how to craete a database in SQL, create tables in the database, apply some  modifications and constraint,uploading a file on the sql server and answering making some adjustments with detailed questions and answers.

---

# Questions 

- Create a Database called 'Student_Record'
- Create tables in the database containing Student Information, Health Records and Performance
- while creating the tables The Id has to be uniques, where student has no score '0' should be there by default.
- Change the column name bearing Subject to Course.
- Drop the Age  column from the student Information table.
- From the uploaded file,
- 1. Select the employee that shows data where city is Mumbia and Delhi.
  2. Select the employee with date of birth above 1990
  3. Select the employee where first name starts with 'A' and 'E'.
  4. Subset the salary table to show salaries  less than 1 million and sort by Ascending Order.
  5. Total number of employees in our employee table?
  6. The top 5 cities with the highest number of employees then filetr the result to show  cities with more than 15 employees.
  7. find out the most used PIN code by the employee.
 
# Resolution

![TASK1](https://github.com/mjbrown-prog/SQL_TASKS/assets/64136357/69f12ead-97e1-4d14-825f-2730d9f41e2c)

From the above, Database named Student_Records was created using `CREATE DATABASE`. Then created table using `CREATE TABLE`.

Note while creating the tables the information has to be set by adding Primary Key Identity for Student ID which performs an auto-increment, then sey the name Column in `VARCHAR(50)` not null, then the Age `INT`, the Gender `VARCHAR(10)`, the Sublect `VARCHAR(50)`, the Bloodgroup `VARCHAR(3)`, the Weight `DECIMAL(5,2)`, the Height `DECIMAL(5,2)`, the Score `INT DEFAULT '0'`, the Grade ` INT`.

For Inserting the informations in the table i used `INSERT INTO`. 

To change the column bearing the Suject to Course i used `EXEC sp_rename` where the table name . the old name and the new name.

To drop the Age column firstly you have to `ALTER TABLE` then go ahead to `DROP COLUMN` the the column name Age.

---

![TASK2](https://github.com/mjbrown-prog/SQL_TASKS/assets/64136357/5a70a9b7-6993-4c1e-9980-7aac1cd2589a)

![Salary](https://github.com/mjbrown-prog/SQL_TASKS/assets/64136357/c87740b3-a225-467f-abf6-e7a540a9852b)

From the Above, the uploaded file,

- To select the employee that shows data where city is Mumbia and Delhi we use `SELECT * FROM Employee WHERE city in ( 'Mumbai' , 'Delhi');`.

- To select the employee with date of birth above 1990 we use `SELECT * FROM Employee WHERE date_of_birth > '1990';`.

- To Select the employee where first name starts with 'A' and 'E' we use `SELECT * FROM Employee WHERE fname LIKE '%a%' and fname like '%e%';`.

- To Subset the salary table to show salaries  less than 1 million and sort by Ascending Order we use `SELECT * FROM Salary WHERE Base <1000000 ORDER BY empID ASC;`,

- To calculate the Total number of employees in our employee table we use `SELECT COUNT(*) AS TOTAL_EMPLOYEE FROM Employee;`.

- To find out the top 5 cities with the highest number of employees then filter the result to show  cities with more than 15 employees first i had to find out the top 5 cities by using `WITH CityCounts AS (
   SELECT city, COUNT(*) AS EmployeeCount
   FROM Employee
   GROUP BY city
)
SELECT TOP 5 city
FROM CityCounts
ORDER BY EmployeeCount ASC;` then went ahead to filter to get the cities with more than 15 employees by using ` SELECT COUNT(*) AS TOTAL_EMPLOYEE FROM Employee

SELECT CITY, COUNT(*) AS TOTAL_EMPLOYEE FROM EMPLOYEE
GROUP BY city
HAVING COUNT(*) > 15;`. 

Please note that to name the column which you want to filter we had to use count and the the name which i want from employee.

- to find out the most used pin code we used `SELECT TOP 1 pincode,COUNT(*) AS MOST_USED FROM
 Employee GROUP BY pincode HAVING COUNT(*) >30;` why greater than 30 was used because from the salary table it was noticed that the top 5 most used Pincode  is  between 6-44. to stream line to most used i used top 1 and used the numbers above 30.

---

# Conclusion

I get to understand and know how to Creating Databases, Creating Tables, Inserting values into tables, Adding constraints to columns in a table, Retrieving information using SELECT, Altering table structure. Retrieving Data From Database by using SELECT (DISTINCT), SELECT Using WHERE
Operators, CASE Statements, ORDER BY ,TOP N and Lastly how to use the Aggregate funtion by Aggregate Functions, GROUP BY clause and HAVING. 













