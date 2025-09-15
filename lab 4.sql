-- -----------------------------------------------------------------------------------------------------------------------------------------
-- Lab Experiment 03: Implementation of different types of SQL functions.

-- -----------------------------------------------------------------------------------------------------------------------------------------
-- STUDENT NAME: SUMEDHA T S
-- USN: 1RUA24BCA0085
-- SECTION: BCA(HONS)
-- -----------------------------------------------------------------------------------------------------------------------------------------
SELECT USER(), 
       @@hostname AS Host_Name, 
       VERSION() AS MySQL_Version, 
       NOW() AS Current_Date_Time;

-- Paste the Output below by execution of above command
/*05:58:17	SELECT USER(),     
 VERSION() AS MySQL_Version,        
 NOW() AS Current_Date_Time LIMIT 0, 1000	
 1 row(s) returned	0.000 sec / 0.000 sec*/


-- -----------------------------------------------------------------------------------------------------------------------------------------
-- PreCoded Relational Schema and Instance.
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- 1. create a table named Employee with EmpID ,FirstName,LastName Salary BirthDate HireDate 
create database company;
/*06:23:51	create database company	1 row(s) affected	0.000 sec
*/
use company;
/*06:23:55	use company	0 row(s) affected	0.000 sec
*/
create table employee
( empID int primary key,
  firstname varchar(18),
  lastname varchar(18),
  salary int,
  birthdate date,
  hiredate date);
  /*06:24:00	create table employee ( empID int,   firstname varchar(18),   lastname varchar(18),   salary int,   birthdate date,   hiredate date)	0 row(s) affected	0.015 sec
*/
  desc employee;
  /*'empID', 'int', 'NO', 'PRI', NULL, ''
'firstname', 'varchar(18)', 'YES', '', NULL, ''
'lastname', 'varchar(18)', 'YES', '', NULL, ''
'salary', 'int', 'YES', '', NULL, ''
'birthdate', 'date', 'YES', '', NULL, ''
'hiredate', 'date', 'YES', '', NULL, ''
*/
-- 2. Insert 10 records to employee;
insert into employee values
(01,"sumedha","shivkumar",10000,'2006-05-08','2025-07-06'),
(02,"sudha","shiva",40000,'2006-06-08','2025-07-08'),
(03,"ram","kumar",20000,'2006-05-14','2025-07-07'),
(04,"vedha","kumari",10000,'2006-07-08','2025-08-06'),
(05,"ravi","kumar",100000,'2006-08-07','2025-11-08'),
(06,"radha","shivkumar",17000,'2006-08-08','2025-12-14'),
(07,"krishna","kumar",670000,'2006-08-08','2025-12-06'),
(08,"jaanu","kumar",100000,'2006-05-09','2025-11-07'),
(09,"ananya","gowda",100000,'2006-12-14','2025-07-09'),
(10,"suvi","gowda",700000,'2006-08-09','2025-07-06');
/*06:24:07	insert into employee values (01,"sumedha","shivkumar",10000,'2006-05-08','2025-07-06'), (02,"sudha","shiva",40000,'2006-06-08','2025-07-08'), (03,"ram","kumar",20000,'2006-05-14','2025-07-07'), (04,"vedha","kumari",10000,'2006-07-08','2025-08-06'), (05,"ravi","kumar",100000,'2006-08-07','2025-11-08'), (06,"radha","shivkumar",17000,'2006-08-08','2025-12-14'), (07,"krishna","kumar",670000,'2006-08-08','2025-12-06'), (08,"jaanu","kumar",100000,'2006-05-09','2025-11-07'), (09,"ananya","gowda",100000,'2006-12-14','2025-07-09'), (10,"suvi","gowda",700000,'2006-08-09','2025-07-06')	10 row(s) affected Records: 10  Duplicates: 0  Warnings: 0	0.016 sec
*/
-- 3. create a table named Orders with OrderID , OrderDate, totalAmount, EmpID(foreign key)  
create table orders
( orderid int primary key,
  orderdate date,
  totalamount int,
  empID int,
  foreign key (empID) references employee(empID));
  /*06:36:52	create table orders ( orderid int primary key,   orderdate date,   totalamount int,   empID int,   foreign key (empID) references employee(empID))	0 row(s) affected	0.016 sec
*/
desc orders;
/*'orderid', 'int', 'NO', 'PRI', NULL, ''
'orderdate', 'date', 'YES', '', NULL, ''
'totalamount', 'int', 'YES', '', NULL, ''
'empID', 'int', 'YES', 'MUL', NULL, ''
*/
-- 4. Insert 10 records to Orders
insert into orders values
(01,'2025-05-06',2345,01),
(02,'2025-07-06',2340,02),
(03,'2025-05-09',2300,03),
(05,'2025-08-06',2305,04),
(08,'2025-07-06',7845,07),
(09,'2025-08-06',2345,09),
(11,'2025-09-06',2005,06),
(06,'2025-11-06',2000,08),
(12,'2025-12-06',9045,05),
(15,'2025-05-06',1492,10);
/*06:38:51	insert into orders values (01,'2025-05-06',2345,01), (02,'2025-07-06',2340,02), (03,'2025-05-09',2300,03), (05,'2025-08-06',2305,04), (08,'2025-07-06',7845,07), (09,'2025-08-06',2345,09), (11,'2025-09-06',2005,06), (06,'2025-11-06',2000,08), (12,'2025-12-06',9045,05), (15,'2025-05-06',1492,10)	10 row(s) affected Records: 10  Duplicates: 0  Warnings: 0	0.015 sec
*/

-- -----------------------------------------------------------------------------------------------------------------------------------------
-- Print the Information of the Employee and Order Table. [ Hint: SELECT * FROM TABLENAME ]
select * from employee;
select * from orders;
-- Write the SQL Query below this line.
-- Output: 
/*'1', 'sumedha', 'shivkumar', '10000', '2006-05-08', '2025-07-06'
'2', 'sudha', 'shiva', '40000', '2006-06-08', '2025-07-08'
'3', 'ram', 'kumar', '20000', '2006-05-14', '2025-07-07'
'4', 'vedha', 'kumari', '10000', '2006-07-08', '2025-08-06'
'5', 'ravi', 'kumar', '100000', '2006-08-07', '2025-11-08'
'6', 'radha', 'shivkumar', '17000', '2006-08-08', '2025-12-14'
'7', 'krishna', 'kumar', '670000', '2006-08-08', '2025-12-06'
'8', 'jaanu', 'kumar', '100000', '2006-05-09', '2025-11-07'
'9', 'ananya', 'gowda', '100000', '2006-12-14', '2025-07-09'
'10', 'suvi', 'gowda', '700000', '2006-08-09', '2025-07-06'
*/
/*'1', '2025-05-06', '2345', '1'
'2', '2025-07-06', '2340', '2'
'3', '2025-05-09', '2300', '3'
'5', '2025-08-06', '2305', '4'
'6', '2025-11-06', '2000', '8'
'8', '2025-07-06', '7845', '7'
'9', '2025-08-06', '2345', '9'
'11', '2025-09-06', '2005', '6'
'12', '2025-12-06', '9045', '5'
'15', '2025-05-06', '1492', '10'
*/
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- Number Functions Section
-- ------------------------------------------------------------
/* a. Round Salaries: Round employee salaries to nearest integer */
select round(salary)
from employee;
-- Output: 
/*'10000'
'40000'
'20000'
'10000'
'100000'
'17000'
'670000'
'100000'
'100000'
'700000'
*?
/* b. Absolute Values: Show absolute values of salaries */
select abs(salary)
from employee;
-- Output: 
/*'10000'
'40000'
'20000'
'10000'
'100000'
'17000'
'670000'
'100000'
'100000'
'700000'
*/

/* c. Ceiling Values: Get ceiling values of order amounts */
select ceil(totalamount)
from orders;
-- Output: 
/*'2345'
'2340'
'2300'
'2305'
'2000'
'7845'
'2345'
'2005'
'9045'
'1492'
*?
-- ------------------------------------------------------------
-- Aggregate Functions Section
-- ------------------------------------------------------------
/* a. Count of Employees: Find total number of employees */
select count(*)
from employee;
-- Output: 
/*'10'*/

/* b. Sum of Salaries: Calculate total salary expense */
select sum(salary)
from employee;
-- Output: 
/*'1767000'
*?

/* c. Average Order Amount: Find average order value */
select avg(totalamount)
from orders;
-- Output: 
/*'3402.2000'
*/

/* d. Max/Min Salary: Find highest and lowest salaries */
select max(salary), min(salary)
from employee;
-- Output: 
/*'700000', '10000'
*/
-- ------------------------------------------------------------
-- Character Functions Section
-- ------------------------------------------------------------
/* a. Case Conversion: Show names in uppercase and lowercase */
select upper(firstname),lower(firstname)
from employee;
-- Output: 
/*'SUMEDHA', 'sumedha'
'SUDHA', 'sudha'
'RAM', 'ram'
'VEDHA', 'vedha'
'RAVI', 'ravi'
'RADHA', 'radha'
'KRISHNA', 'krishna'
'JAANU', 'jaanu'
'ANANYA', 'ananya'
'SUVI', 'suvi'
*/
select upper(lastname),lower(lastname)
from employee;
/*'SHIVKUMAR', 'shivkumar'
'SHIVA', 'shiva'
'KUMAR', 'kumar'
'KUMARI', 'kumari'
'KUMAR', 'kumar'
'SHIVKUMAR', 'shivkumar'
'KUMAR', 'kumar'
'KUMAR', 'kumar'
'GOWDA', 'gowda'
'GOWDA', 'gowda'
*/

/* b. Concatenate Names: Create full names */
select concat(firstname,lastname)
from employee;
-- Output: 
/*'sumedhashivkumar'
'sudhashiva'
'ramkumar'
'vedhakumari'
'ravikumar'
'radhashivkumar'
'krishnakumar'
'jaanukumar'
'ananyagowda'
'suvigowda'
*/
/* c. Extract Substring: Get first 3 characters of first names */
select substring(firstname,1,3)
from employee;
-- Output: 
/*'sum'
'sud'
'ram'
'ved'
'rav'
'rad'
'kri'
'jaa'
'ana'
'suv'
*/
-- ------------------------------------------------------------
-- Conversion Functions Section
-- ------------------------------------------------------------
/* Convert String to Date: Convert text to DATE type */
select cast(orderdate as char) as converteddate
from orders;
-- Output: 
/*'2025-05-06'
'2025-07-06'
'2025-05-09'
'2025-08-06'
'2025-11-06'
'2025-07-06'
'2025-08-06'
'2025-09-06'
'2025-12-06'
'2025-05-06'
*/
-- ------------------------------------------------------------
-- Date Functions Section
-- ------------------------------------------------------------
/* a. Current Date/Time: Get current timestamp */
select now() as correct_timestamp;
-- Output: 
/*'2025-09-08 07:20:40'
*/
/* b. Extract Year: Get year from order dates */
select orderdate,year(orderdate) as order_year
from orders;
-- Output: 
/*'2025-05-06', 2025
'2025-07-06', 2025
'2025-05-09', 2025
'2025-08-06', 2025
'2025-11-06', 2025
'2025-07-06', 2025
'2025-08-06', 2025
'2025-09-06', 2025
'2025-12-06', 2025
'2025-05-06', 2025
*/
/* c. Add Months: Add 3 months to order dates */
select orderdate,date_add(orderdate, INTERVAL 3 MONTH) as "newdate"
from orders;
-- Output: 
/*'2025-05-06', '2025-08-06'
'2025-07-06', '2025-10-06'
'2025-05-09', '2025-08-09'
'2025-08-06', '2025-11-06'
'2025-11-06', '2026-02-06'
'2025-07-06', '2025-10-06'
'2025-08-06', '2025-11-06'
'2025-09-06', '2025-12-06'
'2025-12-06', '2026-03-06'
'2025-05-06', '2025-08-06'
*/
/* d. Days Since Order: Calculate days between order date and now */
select orderdate, datediff(now(),orderdate) as days_since_order
from orders;
-- Output: 
/*'2025-05-06', '125'
'2025-07-06', '64'
'2025-05-09', '122'
'2025-08-06', '33'
'2025-11-06', '-59'
'2025-07-06', '64'
'2025-08-06', '33'
'2025-09-06', '2'
'2025-12-06', '-89'
'2025-05-06', '125'
*/
-- END of the Task -- 