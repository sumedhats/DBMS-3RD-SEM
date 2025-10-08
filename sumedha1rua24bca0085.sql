create database studentmarkscard;
use studentmarkscard;
create table markscard
(reg_no INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    m1 INT,
    m2 INT,
    m3 INT);
desc markscard;
alter table markscard
 add (avg int,total int,result varchar(6));
desc markscard;
 insert into markscard value(101,'ram',19,45,45,45,135,45,'pass');
 desc markscard;
 update markscard
 set result ='pass'
 where m1<=35 and m2 <=35 and m3<=35;
 update markscard
 set result = 'fail'
 where m1>35 or m2>35 or m3>35;
 
 
 