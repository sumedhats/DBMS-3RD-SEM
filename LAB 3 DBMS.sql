-- -----------------------------------------------------------------------------------------------------------------------------------------
-- Lab Experiment 02: Program 02 - Implementation of DML Commands in SQL ( INSERT , SELECT, UPDATE and DELETE )
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- STUDENT NAME: SUMEDHA T S
-- USN: 1RUA24BCA0085
-- SECTION: BCA (HONS)
-- -----------------------------------------------------------------------------------------------------------------------------------------
SELECT USER(), 
       @@hostname AS Host_Name, 
       VERSION() AS MySQL_Version, 
       NOW() AS Current_Date_Time;
-- Paste the Output below by execution of above command
/*05:52:01	SELECT USER(),         @@hostname AS Host_Name,         VERSION() AS MySQL_Version,         NOW() AS Current_Date_Time LIMIT 0, 1000	1 row(s) returned	0.000 sec / 0.000 sec*/
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- Scenario: You are managing a database for a library with two tables: Books and Members.
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- Task 01: Create Tables [ Check the below mentioned Instructions:
-- Create the Books and Members tables with the specified structure.
-- Books Table and Member Table : 
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- Write the SQL Query below for above mentioned task with the Instructed Column in the session 
CREATE DATABASE LIBRARY;
USE LIBRARY;
CREATE TABLE BOOKS(
 BOOKID INT,
 BOOKNAME VARCHAR(30),
 AUTHORNAME VARCHAR(14),
 THEME VARCHAR(30));
 DESC BOOKS;
 CREATE TABLE MEMBER(
 ID INT,
 NAME CHAR(30),
 EMAILID VARCHAR(14),
 PHNUMBER INT);
DESC MEMBER;
-- Paste the Output below for the given command ( DESC TableName;) 
/* 05:58:57	CREATE TABLE BOOKS(  BOOKID INT,  BOOKNAME CHAR(30),  AUTHORNAME VARCHAR(14))	0 row(s) affected	0.016 sec
*/
/* 'BOOKID', 'int', 'YES', '', NULL, ''
'BOOKNAME', 'char(30)', 'YES', '', NULL, ''
'AUTHORNAME', 'varchar(14)', 'YES', '', NULL, ''
*/
/*05:59:24	CREATE TABLE MEMBER(  ID INT,  NAME CHAR(30),  EMAILID VARCHAR(14),  PHNUMBER INT)	0 row(s) affected	0.031 sec
 */
 /*'ID', 'int', 'YES', '', NULL, ''
'NAME', 'char(30)', 'YES', '', NULL, ''
'EMAILID', 'varchar(14)', 'YES', '', NULL, ''
'PHNUMBER', 'int', 'YES', '', NULL, ''
 */
-- ------------------------------------------------------------------------------------------------------------------------------------------
-- Task 02: Insert a New Book
-- Instructions: Insert a book titled "1984_The Black Swan" by George Orwell (published in 1949) with 04 available copies and 10 Total copies. 
-- Populate other fields as needed.
-- ------------------------------------------------------------------------------------------------------------------------------------------
-- Write the SQL Query below for above mentioned task.
INSERT INTO BOOKS VALUES 
(1, '1984_The Black Swan', 'George Orwell', 'Novel');
DESC BOOKS;



-- Paste the Output below for the given command ( SELECT * FROM TABLE_NAME ).
/*06:31:33	INSERT INTO BOOKS VALUES ('1','1984 THE BLACK SWAN','GEORGE ORWELL')	1 row(s) affected	0.000 sec
*/
/*06:31:39	DESC BOOKS	3 row(s) returned	0.000 sec / 0.000 sec
*/

-- ------------------------------------------------------------------------------------------------------------------------------------------
-- Task 03: Add New Members
-- Instructions: Insert two members: David Lee (Platinum, joined 2024-04-15) and Emma Wilson (Silver, joined 2024-05-22).
-- Populate other fields as needed.
-- ------------------------------------------------------------------------------------------------------------------------------------------
-- Write the SQL Query below for above mentioned task.
INSERT INTO MEMBER VALUES
(1,'RAVI','RAVI@123','4'),
(2,'RAM','RAM@123','4');
DESC MEMBER;



-- Paste the Output below for the given command ( SELECT * FROM TABLE_NAME ).
/*06:49:37	INSERT INTO MEMBER VALUES (1,'RAVI','RAVI@123','4'), (2,'RAM','RAM@123','4')	2 row(s) affected Records: 2  Duplicates: 0  Warnings: 0	0.000 sec
*/
/* 06:48:13	DESC MEMBER	4 row(s) returned	0.000 sec / 0.000 sec
*/

-- ------------------------------------------------------------------------------------------------------------------------------------------
-- Task 04: Update Book Details 
-- Instructions: The library acquired 2 additional copies of "1984_The Black Swan". Update the Books table.
-- ------------------------------------------------------------------------------------------------------------------------------------------
-- Write the SQL Query below for above mentioned task.
ALTER TABLE BOOKS
ADD PUBLISHING_LOCATION varchar(54);
UPDATE BOOKS SET PUBLISHING_LOCATION = 'bangalore';







-- Paste the Output below for the given command ( SELECT * FROM TABLE_NAME ).
/*06:51:57	ALTER TABLE BOOKS ADD PUBLISHING_LOCATION varchar(54)	0 row(s) affected Records: 0  Duplicates: 0  Warnings: 0	0.000 sec
*/

-- ------------------------------------------------------------------------------------------------------------------------------------------
-- Task 05: Modify a Member's Information
-- Instructions: Update a member's membership type. Emma Wilson has upgraded her membership from 'Silver' to 'Gold'.
-- ------------------------------------------------------------------------------------------------------------------------------------------
-- Write the SQL Query below for above mentioned task.








-- Paste the Output below for the given command ( SELECT * FROM TABLE_NAME ).


-- ------------------------------------------------------------------------------------------------------------------------------------------
-- Task 06: Remove a Member
-- Instructions: Delete David Lee’s record from the Members table.
-- ------------------------------------------------------------------------------------------------------------------------------------------
-- Write the SQL Query below for above mentioned task.








-- Paste the Output below for the given command ( SELECT * FROM TABLE_NAME ).


-- ------------------------------------------------------------------------------------------------------------------------------------------
-- Task 09: Borrowing Table 
-- Instructions: Create a Borrowing table with foreign keys referencing Books and Members.
-- Subtask 1: Borrow a Book
-- Scenario:Emma Wilson (member_id = 2) borrows the book "The Catcher in the Rye" (book_id = 102) on 2024-06-01. Insert this record into the Borrowing table.
-- ------------------------------------------------------------------------------------------------------------------------------------------
-- Write the SQL Query below for above mentioned task.








-- Paste the Output below for the given command ( SELECT * FROM TABLE_NAME ).


-- ------------------------------------------------------------------------------------------------------------------------------------------
-- Task 10: Find the name of Borrower who book = 102 [ Advance and Optional ]
-- ------------------------------------------------------------------------------------------------------------------------------------------
-- Write the SQL Query below for above mentioned task.








-- Paste the Output below for the given command ( SELECT * FROM TABLE_NAME ).


-- ------------------------------------------------------------------------------------------------------------------------------------------
-- Final Task 00: ER Diagram - Instructions:
-- Draw an ER diagram for the library database. Additional Upload the scanned copy of the created ER Daigram in the Google Classroom.



-- END of the Task -- 