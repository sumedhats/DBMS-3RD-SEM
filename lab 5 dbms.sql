-- Lab Experiment 04: Implement arithmetic, logical, comparison, special, and set operators in SQL using the Employees and Departments tables.

-- -----------------------------------------------------------------------------------------------------------------------------------------
-- STUDENT NAME: sumedha ts 
-- USN: 1rua24bca0085
-- SECTION: bca hons
-- -----------------------------------------------------------------------------------------------------------------------------------------
SELECT USER(), 
       @@hostname AS Host_Name, 
       VERSION() AS MySQL_Version, 
       NOW() AS Current_Date_Time;

-- Write your code below this line along with the output 
/*'root@localhost', 'RVU-PC-012', '8.4.6', '2025-09-15 06:01:15'
*/
create database office;
use office;
CREATE TABLE Employees (  
    EmployeeID INT PRIMARY KEY,  
    Name VARCHAR(100),  
    Age INT,  
    Salary DECIMAL(10,2),  
    DepartmentID INT,  
    HireDate DATE,  
    Address VARCHAR(255)  
);  

INSERT INTO Employees VALUES  
(1, 'Alice Johnson', 30, 60000, 1, '2020-03-15', '123 Main St, City A'),  
(2, 'Bob Smith', 28, 55000, 2, '2021-06-20', '456 Oak St, City B'),  
(3, 'Charlie Brown', 35, 75000, 3, '2019-01-10', '789 Pine St, City C'),  
(4, 'David Wilson', 40, 90000, 3, '2018-07-25', '101 Maple St, City D'),  
(5, 'Emma Davis', 27, 50000, 4, '2022-09-30', '202 Birch St, City E'),  
(6, 'Frank Miller', 32, 70000, 5, '2020-11-18', '303 Cedar St, City F'),  
(7, 'Grace Lee', 29, 58000, 1, '2021-04-05', '404 Walnut St, City G'),  
(8, 'Hank Adams', 45, 98000, 2, '2017-12-12', '505 Spruce St, City H'),  
(9, 'Ivy Green', 31, 64000, 4, '2023-02-14', '606 Redwood St, City I'),  
(10, 'Jack White', 38, 85000, 5, '2019-08-08', '707 Elm St, City J');  

-- TABLE:02 Department Table

CREATE TABLE Departments (  
    DepartmentID INT PRIMARY KEY,  
    DepartmentName VARCHAR(50)  
);  

INSERT INTO Departments VALUES  
(1, 'HR'),  
(2, 'Finance'),  
(3, 'Engineering'),  
(4, 'Marketing'),  
(5, 'Sales');  


-- TASK FOR STUDENTS 

/* 
Exercise 1: Arithmetic Operators
Addition, Subtraction, Multiplication, Division
Q1 - Add a bonus (10% of Salary) to each employee’s salary.*/
SELECT Salary,salary +(salary*0.10) from Employees;
/*'60000.00', '66000.0000'
'55000.00', '60500.0000'
'75000.00', '82500.0000'
'90000.00', '99000.0000'
'50000.00', '55000.0000'
'70000.00', '77000.0000'
'58000.00', '63800.0000'
'98000.00', '107800.0000'
'64000.00', '70400.0000'
'85000.00', '93500.0000'
*/
  
/*Q2 - Subtract tax (15% of Salary) from each employee’s salary.*/
select salary,salary + (salary*0.15) from Employees;
/*'60000.00', '69000.0000'
'55000.00', '63250.0000'
'75000.00', '86250.0000'
'90000.00', '103500.0000'
'50000.00', '57500.0000'
'70000.00', '80500.0000'
'58000.00', '66700.0000'
'98000.00', '112700.0000'
'64000.00', '73600.0000'
'85000.00', '97750.0000'
*/

/*Q3 - Calculate the yearly salary from the monthly salary.*/
select salary,12*salary from Employees;
/*'60000.00', '720000.00'
'55000.00', '660000.00'
'75000.00', '900000.00'
'90000.00', '1080000.00'
'50000.00', '600000.00'
'70000.00', '840000.00'
'58000.00', '696000.00'
'98000.00', '1176000.00'
'64000.00', '768000.00'
'85000.00', '1020000.00'
*/
/*-- Modulus Operator
Q4 - Find the remainder when employees’ ages are divided by 5.*/
select age,age%5 from Employees;
/*'30', '0'
'28', '3'
'35', '0'
'40', '0'
'27', '2'
'32', '2'
'29', '4'
'45', '0'
'31', '1'
'38', '3'
*/
-- Write your code below this line along with the output 
/* Exercise 2: Logical Operators: AND, OR, NOT
Q5 - Retrieve employees older than 30 AND with salary > 50000.*/
select age, age>30 and salary >50000 from Employees;
/*# age, age>30 and salary >50000
'30', '0'
'28', '0'
'35', '1'
'40', '1'
'27', '0'
'32', '1'
'29', '0'
'45', '1'
'31', '1'
'38', '1'
*/
/*Q6 - Retrieve employees in the HR department (ID=1) OR earning > 70000.*/
select * from employees where departmentID=1 OR salary > 70000 ;
/*'1', 'Alice Johnson', '30', '60000.00', '1', '2020-03-15', '123 Main St, City A'
'3', 'Charlie Brown', '35', '75000.00', '3', '2019-01-10', '789 Pine St, City C'
'4', 'David Wilson', '40', '90000.00', '3', '2018-07-25', '101 Maple St, City D'
'7', 'Grace Lee', '29', '58000.00', '1', '2021-04-05', '404 Walnut St, City G'
'8', 'Hank Adams', '45', '98000.00', '2', '2017-12-12', '505 Spruce St, City H'
'10', 'Jack White', '38', '85000.00', '5', '2019-08-08', '707 Elm St, City J'
*/
/*Q7 - Retrieve employees NOT living in City G.*/
select * from Employees where address not LIKE('city G') ;
/*'1', 'Alice Johnson', '30', '60000.00', '1', '2020-03-15', '123 Main St, City A'
'2', 'Bob Smith', '28', '55000.00', '2', '2021-06-20', '456 Oak St, City B'
'3', 'Charlie Brown', '35', '75000.00', '3', '2019-01-10', '789 Pine St, City C'
'4', 'David Wilson', '40', '90000.00', '3', '2018-07-25', '101 Maple St, City D'
'5', 'Emma Davis', '27', '50000.00', '4', '2022-09-30', '202 Birch St, City E'
'6', 'Frank Miller', '32', '70000.00', '5', '2020-11-18', '303 Cedar St, City F'
'7', 'Grace Lee', '29', '58000.00', '1', '2021-04-05', '404 Walnut St, City G'
'8', 'Hank Adams', '45', '98000.00', '2', '2017-12-12', '505 Spruce St, City H'
'9', 'Ivy Green', '31', '64000.00', '4', '2023-02-14', '606 Redwood St, City I'
'10', 'Jack White', '38', '85000.00', '5', '2019-08-08', '707 Elm St, City J'
*/
-- Write your code below this line along with the output 
/* Exercise 3: Comparison Operators

Q8 - Equality, Inequality, Greater Than, Less Than

/*Q9 - Find employees with salary = 60000.*/
SELECT * FROM EMPLOYEES WHERE SALARY = 60000;
/*'1', 'Alice Johnson', '30', '60000.00', '1', '2020-03-15', '123 Main St, City A'
*/
/*Q10 - List employees not in the IT department (no IT department exists; returns all).*/
desc employees;
SELECT * FROM employees WHERE DepartmentID not in('IT');
/*'1', 'Alice Johnson', '30', '60000.00', '1', '2020-03-15', '123 Main St, City A'
'2', 'Bob Smith', '28', '55000.00', '2', '2021-06-20', '456 Oak St, City B'
'3', 'Charlie Brown', '35', '75000.00', '3', '2019-01-10', '789 Pine St, City C'
'4', 'David Wilson', '40', '90000.00', '3', '2018-07-25', '101 Maple St, City D'
'5', 'Emma Davis', '27', '50000.00', '4', '2022-09-30', '202 Birch St, City E'
'6', 'Frank Miller', '32', '70000.00', '5', '2020-11-18', '303 Cedar St, City F'
'7', 'Grace Lee', '29', '58000.00', '1', '2021-04-05', '404 Walnut St, City G'
'8', 'Hank Adams', '45', '98000.00', '2', '2017-12-12', '505 Spruce St, City H'
'9', 'Ivy Green', '31', '64000.00', '4', '2023-02-14', '606 Redwood St, City I'
'10', 'Jack White', '38', '85000.00', '5', '2019-08-08', '707 Elm St, City J'
*/
/*Q11 - Retrieve employees younger than 25 with salary > 50000 */
select * from employees where age > 25 and salary > 50000;
/* '1', 'Alice Johnson', '30', '60000.00', '1', '2020-03-15', '123 Main St, City A'
'2', 'Bob Smith', '28', '55000.00', '2', '2021-06-20', '456 Oak St, City B'
'3', 'Charlie Brown', '35', '75000.00', '3', '2019-01-10', '789 Pine St, City C'
'4', 'David Wilson', '40', '90000.00', '3', '2018-07-25', '101 Maple St, City D'
'6', 'Frank Miller', '32', '70000.00', '5', '2020-11-18', '303 Cedar St, City F'
'7', 'Grace Lee', '29', '58000.00', '1', '2021-04-05', '404 Walnut St, City G'
'8', 'Hank Adams', '45', '98000.00', '2', '2017-12-12', '505 Spruce St, City H'
'9', 'Ivy Green', '31', '64000.00', '4', '2023-02-14', '606 Redwood St, City I'
'10', 'Jack White', '38', '85000.00', '5', '2019-08-08', '707 Elm St, City J'
*/
/*Q12 - List employees aged 25–35.*/
select * from employees where age between 25 and 35;
/*'1', 'Alice Johnson', '30', '60000.00', '1', '2020-03-15', '123 Main St, City A'
'2', 'Bob Smith', '28', '55000.00', '2', '2021-06-20', '456 Oak St, City B'
'3', 'Charlie Brown', '35', '75000.00', '3', '2019-01-10', '789 Pine St, City C'
'4', 'David Wilson', '40', '90000.00', '3', '2018-07-25', '101 Maple St, City D'
'6', 'Frank Miller', '32', '70000.00', '5', '2020-11-18', '303 Cedar St, City F'
'7', 'Grace Lee', '29', '58000.00', '1', '2021-04-05', '404 Walnut St, City G'
'8', 'Hank Adams', '45', '98000.00', '2', '2017-12-12', '505 Spruce St, City H'
'9', 'Ivy Green', '31', '64000.00', '4', '2023-02-14', '606 Redwood St, City I'
'10', 'Jack White', '38', '85000.00', '5', '2019-08-08', '707 Elm St, City J'
 */
/*Q13 - Find employees in HR, Finance, or Engineering (IDs 1, 2, 3).*/
select * from employees where departmentid in  (1,2,3);
/*'1', 'Alice Johnson', '30', '60000.00', '1', '2020-03-15', '123 Main St, City A'
'2', 'Bob Smith', '28', '55000.00', '2', '2021-06-20', '456 Oak St, City B'
'3', 'Charlie Brown', '35', '75000.00', '3', '2019-01-10', '789 Pine St, City C'
'4', 'David Wilson', '40', '90000.00', '3', '2018-07-25', '101 Maple St, City D'
'7', 'Grace Lee', '29', '58000.00', '1', '2021-04-05', '404 Walnut St, City G'
'8', 'Hank Adams', '45', '98000.00', '2', '2017-12-12', '505 Spruce St, City H'
*/
/*Q14 - Find employees with names starting with A.*/
select * from employees where name like ('a%');  
/* '1', 'Alice Johnson', '30', '60000.00', '1', '2020-03-15', '123 Main St, City A'
*/
/*Q15 - List employees with no address.*/
select * from employees where address = null;
/*# EmployeeID, Name, Age, Salary, DepartmentID, HireDate, Address
 */
-- Write your code below this line along with the output 
/*Exercise 5: Set Operators: UNION.*/

/*Q16 - Retrieve names from the HR department hired in 2022 OR 2023.

Q17 - Find common employees in the Engineering department (ID=3) hired before and after 2020.

Q18 - Find employees hired in 2023 but not in 2022.

*/