
-- STUDENT NAME: sumedha t s
-- USN: 1RVU24BCA0085
-- SECTION: BCA(HONS)

SELECT USER(), 
       @@hostname AS Host_Name, 
       VERSION() AS MySQL_Version, 
       NOW() AS Current_Date_Time;
-- OUTPUT : [ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ]
# USER(), Host_Name, MySQL_Version, Current_Date_Time

-- Scenario: University Course Management System
-- CREATE AND LOAD THE database DBLab001
-- Write your SQL query below Codespace:
create database BCALab001;
use BCALab001;
-- Task 1: Create the Students Table
-- Create a table to store information about students.
-- Include the following columns:
-- 1. StudentID (Primary Key)
-- 2. FirstName
-- 3. LastName
-- 4. Email (Unique Constraint)
-- 5. DateOfBirth

-- Write your SQL query below Codespace:
create table students
(studentid varchar(20) primary key,
firstName varchar(20),
lastName varchar(20),
email varchar(20) UNIQUE,
dob date);
desc students;
DESC STUDENTS; -- [ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ]
-- OUTPUT : Disclaimer - This code is not the part of the SQL Code
# Field, Type, Null, Key, Default, Extra
/*'studentid', 'varchar(20)', 'NO', 'PRI', NULL, ''
'firstName', 'varchar(20)', 'YES', '', NULL, ''
'lastName', 'varchar(20)', 'YES', '', NULL, ''
'email', 'varchar(20)', 'YES', 'UNI', NULL, ''
'dob', 'date', 'YES', '', NULL, ''*/

-- Alter the table and 2 new columns
alter table students 
 add( Gender varchar(5),
 AGE  int);
 desc students;
-- Modify a column data type
alter table students
 modify Gender varchar(10);
-- Rename a column
 alter table students
  rename column Gender to sex;
  desc students;
-- Drop a column
 alter table students drop column sex;
 desc students;
-- Rename the table
alter table students
 rename to studentdetails ;
desc studentdetails;


-- Task 2: Create the Courses Table
-- Create a table to store information about courses.
-- Include the following columns:
-- - CourseID (Primary Key)
-- - CourseName
-- - Credits

-- Write your SQL query below Codespace:
create table courses 
( courseid int,
  coursename varchar(15),
  credits int);
DESC Courses; -- [ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ]

-- OUTPUT :
/*'courseid', 'int', 'YES', '', NULL, ''
'coursename', 'varchar(15)', 'YES', '', NULL, ''
'credits', 'int', 'YES', '', NULL, ''*/

-- Alter the table and 2 new columns
alter table courses 
 add( marks int,
  hrs varchar(8));
-- Modify a column data type
alter table courses 
modify hrs int;
-- Rename a column
alter table courses 
rename column hrs to hours;
-- Drop a column
alter table courses drop hours;
-- Rename the table
alter table courses 
 rename to coursedetails;
 
 /*'courseid', 'int', 'YES', '', NULL, ''
'coursename', 'varchar(15)', 'YES', '', NULL, ''
'credits', 'int', 'YES', '', NULL, ''
'marks', 'int', 'YES', '', NULL, ''*/


-- Task 3: Create the Enrollments Table
-- Create a table to store course enrollment information.
-- Include the following columns:
-- - EnrollmentID (Primary Key)
-- - StudentID (Foreign Key referencing Students table)
-- - CourseID (Foreign Key referencing Courses table)
-- - EnrollmentDate

-- Write your SQL query below Codespace:
create table storecourseallotmentinformation
( enrollmentid int,
  studentid int,
  courseid int,
  enrollmentdate date);
  desc storecourseallotmentinformation;

DESC ENROLLMENTS; -- [ [ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ] ]
-- OUTPUT :
/*'enrollmentid', 'int', 'YES', '', NULL, ''
'studentid', 'int', 'YES', '', NULL, ''
'courseid', 'int', 'YES', '', NULL, ''
'enrollmentdate', 'date', 'YES', '', NULL, ''*/

-- Alter the table and 2 new columns
alter table storecourseallotmentinformation
add (yrs int,school varchar(23));
-- Modify a column data type
alter table storecourseallotmentinformation
modify school varchar(25);
-- Rename a column
alter table storecourseallotmentinformation
rename column yrs to years;
-- Drop a column
alter table storecourseallotmentinformation
drop column years;
-- Rename the table
alter table storecourseallotmentinformation
rename to storecourses;

/*'enrollmentid', 'int', 'YES', '', NULL, ''
'studentid', 'int', 'YES', '', NULL, ''
'courseid', 'int', 'YES', '', NULL, ''
'enrollmentdate', 'date', 'YES', '', NULL, ''
'school', 'varchar(25)', 'YES', '', NULL, ''*/

-- Task 4: Alter the Students Table
-- Add a column 'PhoneNumber' to store student contact numbers.

-- Write your SQL query below Codespace:

DESC STUDENTS; -- [[ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ]]

-- Task 5: Modify the Courses Table
-- Change the data type of the 'Credits' column to DECIMAL.
-- Write your SQL query below Codespace:

-- Task 6: Drop Tables

SHOW TABLES; -- Before dropping the table

-- Drop the 'Courses' and 'Enrollments' tables from the database.
-- Write your SQL query below Codespace:

SHOW TABLES; -- After dropping the table Enrollement and Course

-- End of Lab Experiment 01
-- Upload the Completed worksheet in the google classroom with file name USN _ LabExperiment01
