-- Lab Experiment 01: Implementation of DDL Commands in SQL for the given scenarios
-- STUDENT NAME: Sumedha t s
-- USN: 1rua24bca0085
-- SECTION: bca(hons)

SELECT USER(), 
       @@hostname AS Host_Name, 
       VERSION() AS MySQL_Version, 
       NOW() AS Current_Date_Time;
-- OUTPUT : [ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ]
/*05:53:35	SELECT USER(),         
@@hostname AS Host_Name,
VERSION() AS MySQL_Version,
NOW() AS Current_Date_Time LIMIT 0, 1000
1 row(s) returned	0.000 sec / 0.000 sec*/

-- Scenario: College Student Management System

-- CREATE AND LOAD THE database
-- Write your SQL query below Codespace:
-- Task 1: Create the Tables under this system (min 5 tables)
  -- Table 01: Departments ( DepartmentID, DepartmentName, HOD,ContactEmail,PhoneNumber,Location )
  -- Table 02: Course (CourseID, CourseName,Credits,DepartmentID,Duration,Fee )
  -- Table 03: Students (StudentID,FirstName,LastName,Email,DateOfBirth,CourseID)
  -- Table 04: Faculty FacultyID,FacultyName,DepartmentID,Qualification,Email,PhoneNumber)
  -- Table 05: Enrollments (  EnrollmentID,StudentID,CourseID,Semester,Year,Grade)
-- Specify the Key (Primary and Foreign) for each table while creating


-- Write your SQL query below Codespace:
create database collagestudentmanagementsystem;
use collagestudentmanagementsystem;
create table department
(departmentid int primary key,
 departmentname varchar(23),
 hod varchar(12),
 contactemail varchar(40),
 phonenumber int,
 location varchar(45));
 desc department;
 create table course
(courseid int primary key,
 coursename varchar(23),
 credits int,
 duration int,
 departmentid int  ,
 fee int );
 desc course;
 create table student
(studentid int primary key,
 firstname varchar(23),
 lastname varchar(12),
 email varchar(40),
 dateofbirth int,
 courseid int);
 desc student;
 create table faculty
(facultyid int primary key,
 facultyname varchar(23),
 departmentid int,
 email varchar(40),
 qualification varchar(15),
 phonenumber int);
 desc faculty;
  create table enrollment
(enrollmentid int primary key,
 courseid varchar(23),
 studentid int,
 semester varchar(40),
 grade varchar(15),
 yrs int);
 desc enrollment;
-- [ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ]
-- OUTPUT : Disclaimer - This code is not the part of the SQL Code
/*06:16:15	create table department (departmentid int primary key,  departmentname varchar(23),  hod varchar(12),  contactemail varchar(40),  phonenumber int,  location varchar(45))	0 row(s) affected	0.016 sec*/
/*06:17:34	create table course (courseid int primary key,  coursename varchar(23),  credits int,  duration int,  departmentid int  ,  fee int )	0 row(s) affected	0.016 sec*/
/*06:18:39	create table student (studentid int primary key,  firstname varchar(23),  lastname varchar(12),  email varchar(40),  dateofbirth int,  courseid int)	0 row(s) affected	0.016 sec*/
--  describe the structure of each table and copy paste the Output 
/*'departmentid', 'int', 'NO', 'PRI', NULL, ''
'departmentname', 'varchar(23)', 'YES', '', NULL, ''
'hod', 'varchar(12)', 'YES', '', NULL, ''
'contactemail', 'varchar(40)', 'YES', '', NULL, ''
'phonenumber', 'int', 'YES', '', NULL, ''
'location', 'varchar(45)', 'YES', '', NULL, ''*/
/*'courseid', 'int', 'NO', 'PRI', NULL, ''
'coursename', 'varchar(23)', 'YES', '', NULL, ''
'credits', 'int', 'YES', '', NULL, ''
'duration', 'int', 'YES', '', NULL, ''
'departmentid', 'int', 'YES', '', NULL, ''
'fee', 'int', 'YES', '', NULL, ''*/
/*'studentid', 'int', 'NO', 'PRI', NULL, ''
'firstname', 'varchar(23)', 'YES', '', NULL, ''
'lastname', 'varchar(12)', 'YES', '', NULL, ''
'email', 'varchar(40)', 'YES', '', NULL, ''
'dateofbirth', 'int', 'YES', '', NULL, ''
'courseid', 'int', 'YES', '', NULL, ''*/
/*'facultyid', 'int', 'NO', 'PRI', NULL, ''
'facultyname', 'varchar(23)', 'YES', '', NULL, ''
'departmentid', 'int', 'YES', '', NULL, ''
'email', 'varchar(40)', 'YES', '', NULL, ''
'qualification', 'varchar(15)', 'YES', '', NULL, ''
'phonenumber', 'int', 'YES', '', NULL, ''*/
/*'enrollmentid', 'int', 'NO', 'PRI', NULL, ''
'courseid', 'varchar(23)', 'YES', '', NULL, ''
'studentid', 'int', 'YES', '', NULL, ''
'semester', 'varchar(40)', 'YES', '', NULL, ''
'grade', 'varchar(15)', 'YES', '', NULL, ''
'yrs', 'int', 'YES', '', NULL, ''*/
-- Perform the following operations on the each of the tables
-- 01: add 2 new columns for each table
   alter table department
     add (faculty varchar(23), student varchar(21));
     alter table course
     add (faculty varchar(23), student varchar(21));
     alter table student
     add (department varchar(23), coursename varchar(21));
     alter table faculty
     add (noofstudents int, subject varchar(23));
     alter table enrollment
     add (faculty varchar(23), course varchar(21));
-- 02: Modify the existing column from each table
      alter table department
     modify column faculty varchar(26);
     alter table course
     modify column faculty varchar(27);
     alter table student
     modify column department varchar(28);
     alter table faculty
     modify column subject varchar(28);
     alter table enrollment
     modify column faculty varchar(28);
-- 03 change the datatypes
alter table department
     modify column faculty varchar(26);
     alter table course
     modify column faculty varchar(27);
     alter table student
     modify column departmentid varchar(28);
     alter table faculty
     modify column subject varchar(28);
     alter table enrollment
     modify column faculty varchar(28);
-- 04: Rename a column
alter table student
 rename column firstname to fname;
-- 05: Drop a column
alter table department
  drop hod;
-- 06: Rename the table
alter table faculty
 rename to facultydetails;
-- 07: describe the structure of the new table
/**/
desc facultydetails;
/*facultyid', 'int', 'NO', 'PRI', NULL, ''
'facultyname', 'varchar(23)', 'YES', '', NULL, ''
'departmentid', 'int', 'YES', '', NULL, ''
'email', 'varchar(40)', 'YES', '', NULL, ''
'qualification', 'varchar(15)', 'YES', '', NULL, ''
'phonenumber', 'int', 'YES', '', NULL, ''
'noofstudents', 'int', 'YES', '', NULL, ''
'subject', 'varchar(28)', 'YES', '', NULL, ''
*/
desc department;
/*departmentid', 'int', 'NO', 'PRI', NULL, ''
'departmentname', 'varchar(23)', 'YES', '', NULL, ''
'contactemail', 'varchar(40)', 'YES', '', NULL, ''
'phonenumber', 'int', 'YES', '', NULL, ''
'location', 'varchar(45)', 'YES', '', NULL, ''
'faculty', 'varchar(26)', 'YES', '', NULL, ''
'student', 'varchar(21)', 'YES', '', NULL, ''
*/

/*'enrollmentid', 'int', 'NO', 'PRI', NULL, ''
'courseid', 'varchar(23)', 'YES', '', NULL, ''
'studentid', 'int', 'YES', '', NULL, ''
'semester', 'varchar(40)', 'YES', '', NULL, ''
'grade', 'varchar(15)', 'YES', '', NULL, ''
'yrs', 'int', 'YES', '', NULL, ''
'faculty', 'varchar(28)', 'YES', '', NULL, ''
'course', 'varchar(21)', 'YES', '', NULL, ''*/

desc course;
/* 'courseid', 'int', 'NO', 'PRI', NULL, ''
'coursename', 'varchar(23)', 'YES', '', NULL, ''
'credits', 'int', 'YES', '', NULL, ''
'duration', 'int', 'YES', '', NULL, ''
'departmentid', 'int', 'YES', '', NULL, ''
'fee', 'int', 'YES', '', NULL, ''
'faculty', 'varchar(27)', 'YES', '', NULL, ''
'student', 'varchar(21)', 'YES', '', NULL, ''*/


-- 1. Add a new column Address (VARCHAR(100)) to the Students table
ALTER TABLE Student
ADD Address VARCHAR(100);

-- 2. Add a column Gender (CHAR(1)) to the Students table
ALTER TABLE Student
ADD Gender CHAR(1);

-- 3. Add a column JoiningDate (DATE) to the Faculty table
ALTER TABLE Faculty
ADD JoiningDate DATE;

-- 4. Modify the column CourseName in the Courses table to increase its size from VARCHAR(50) to VARCHAR(100)
ALTER TABLE Course
MODIFY CourseName VARCHAR(100);

-- 5. Modify the column Location in the Departments table to VARCHAR(80)
ALTER TABLE Department
MODIFY Location VARCHAR(80);

-- 6. Rename the column Qualification in the Faculty table to Degree
ALTER TABLE Facultydetails
RENAME COLUMN Qualification TO Degree;

-- 7. Rename the table Faculty to Teachers
ALTER TABLE Facultydetails
RENAME TO Teachers;

-- 8. Drop the column PhoneNumber from the Departments table
ALTER TABLE Department
DROP COLUMN PhoneNumber;

-- 9. Drop the column Email from the Students table
ALTER TABLE Student
DROP COLUMN Email;

-- 10. Drop the column Duration from the Courses table
ALTER TABLE Course
DROP COLUMN Duration;


-- Show tables before dropping
SHOW TABLES;
/* 'course'
'department'
'enrollment'
'student'
'teachers'
*/

-- Drop the 'Courses' table
DROP TABLE IF EXISTS Course;
/*07:04:01	DROP TABLE IF EXISTS Course	0 row(s) affected	0.000 sec*/

-- Drop the 'Enrollments' table
DROP TABLE IF EXISTS Enrollment;
/*07:04:16	DROP TABLE IF EXISTS Enrollment	0 row(s) affected	0.000 se*/

-- Show tables after dropping
SHOW TABLES;
/*'department'
'student'
'teachers'
 */


-- Note: Perform the specified operations on all the 5 tables in the system
-- End of Lab Experiment 01
-- Upload the Completed worksheet in the google classroom with file name USN _ LabScenario01