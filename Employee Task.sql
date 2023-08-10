SELECT * FROM Employee;

/*SELECT DISTINCT CITY FROM Employee;

SELECT DISTINCT * FROM Employee;

SELECT * FROM Employee WHERE city ! = 'Mumbai' OR city = 'Pune';

SELECT * FROM Employee WHERE name LIKE 'e%';

SELECT * FROM Employee WHERE DeptID BETWEEN 120 AND 125;

SELECT * FROM Employee ORDER BY NAME ASC;

SELECT CONCAT(NAME  , '  ',  FNAME) FROM Employee;

ALTER TABLE EMPLOYEE ADD FULL_NAME VARCHAR(50);

UPDATE EMPLOYEE 
SET FULL_NAME = CONCAT(NAME, '  ' , FNAME);

SELECT * FROM Employee;

SELECT COUNT(*) AS TOTAL_EMPLOYEE FROM Employee

SELECT CITY, COUNT(pincode), COUNT(empID) AS TOTAL_EMPLOYEE FROM EMPLOYEE
GROUP BY CITY, DeptID
HAVING DeptID = 122; */


/*TASK 2 and part of 3*/

/* Select the employee table and show the data where city is Mumbai and Dehli*/


SELECT * FROM Employee WHERE city in ( 'Mumbai' , 'Delhi');

/* Select the employee table where employee first name  have both 'a' and 'e' in them*/

SELECT * FROM Employee WHERE fname LIKE '%a%' and fname like '%e%';

/* Subset the employee table to have employee with date of birth above 1990*/

SELECT * FROM Employee WHERE date_of_birth > '1990';

/* Total number of employee in our employee table*/

SELECT COUNT(*) AS TOTAL_EMPLOYEE FROM Employee

/*Find out the top 5 cities with the highest no of employees, the filter the result to show cities with more than 15 employees*/

USE BUISINESS;
WITH CityCounts AS (
   SELECT city, COUNT(*) AS EmployeeCount
   FROM Employee
   GROUP BY city
)

SELECT CITY
FROM CityCounts
WHERE EmployeeCount = (SELECT MAX(EmployeeCount) FROM CityCounts);

WITH CityCounts AS (
   SELECT city, COUNT(*) AS EmployeeCount
   FROM Employee
   GROUP BY city
)
SELECT TOP 5 city
FROM CityCounts
ORDER BY EmployeeCount ASC;


SELECT COUNT(*) AS TOTAL_EMPLOYEE FROM Employee

SELECT CITY, COUNT(*) AS TOTAL_EMPLOYEE FROM EMPLOYEE
GROUP BY city
HAVING COUNT(*) > 15;


/* FIND OUT THE MOST USED PINCODES BY EMPLOYEE*/

SELECT TOP 1 pincode,COUNT(*) AS MOST_USED FROM
 Employee GROUP BY pincode HAVING COUNT(*) >30; 