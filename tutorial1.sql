CREATE DATABASE SCHOOOL;
USE SCHOOOL;
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    DOB DATE,
    Marks INT,
    City VARCHAR(50)
);
CREATE TABLE Teacher (
    TeacherID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    Subject VARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10,2)
);
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT,
    Dept VARCHAR(50),
    Level INT
);
CREATE TABLE enrollment(
    EnrollID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade CHAR(2),
    Semester VARCHAR(10),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);
INSERT INTO Student VALUES
(1, 'Amit', '2006-01-15', 85, 'Bangalore'),
(2, 'Sneha', '2006-03-22', 92, 'Mysore'),
(3, 'Rahul', '2005-01-05', 76, 'Chennai'),
(4, 'Priya', '2006-07-10', 65, 'Bangalore');
INSERT INTO Teacher VALUES
(101, 'Ravi', 'Maths', '2015-06-12', 45000),
(102, 'Geeta', 'Science', '2018-08-20', 52000),
(103, 'Arun', 'English', '2020-11-05', 48000);
INSERT INTO Course VALUES
(201, 'Maths', 4, 'Science', 1),
(202, 'Science', 3, 'Science', 1),
(203, 'English Literature', 2, 'Arts', 1);
INSERT INTO Enrollment VALUES
(301, 1, 201, 'A', 'Sem1'),
(302, 2, 202, 'B', 'Sem1'),
(303, 3, 203, 'A', 'Sem2'),
(304, 4, 201, 'C', 'Sem2');
SELECT * FROM Student;
SELECT CourseName, RIGHT(CourseName, 3) FROM Course;
SELECT CONCAT(TeacherID, '-', FirstName) FROM Teacher;
SELECT FirstName, LENGTH(FirstName) FROM Student;
SELECT REPLACE(CourseName, 'Maths', 'Mathematics') FROM Course;
SELECT ABS(MAX(Marks) - MIN(Marks)) FROM Student;
SELECT FirstName, ROUND(Salary, -3) FROM Teacher;
SELECT CourseName, SQRT(Credits) FROM Course;
SELECT FirstName, Marks, CEIL(Marks), FLOOR(Marks) FROM Student;
SELECT SUM(Marks) % 5 FROM Student;
SELECT NOW();
SELECT FirstName, YEAR(HireDate), MONTH(HireDate) FROM Teacher;
SELECT * FROM Student WHERE MONTH(DOB) = 1;
SELECT FirstName, DATEDIFF(CURDATE(), HireDate) FROM Teacher;
SELECT COUNT(*) FROM Student;
SELECT AVG(Salary) FROM Teacher;
SELECT MAX(Marks), MIN(Marks) FROM Student;

