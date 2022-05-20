create table student (
rollno int identity (1,1) primary key,
name varchar(50),
email varchar(50),
contact varchar(50),
address varchar(50),
);

insert into student (name,email,contact,address)
values
('abhishek','abhi@gmail.com',8890956464,'sec 14'),
('abhinav','abhinav@gmail.com',8890956465,'sec 13'),
('asha','asha@gmail.com',8890956466,'sec 12'),
('payal','payal@gmail.com',8890956467,'sec 11'),
('lucky','lucky@gmail.com',8890956468,'sec 10');

create table teacher (
tid int,
tname varchar(50),
temail varchar(50),
tcontact varchar(50),
taddress varchar(50),
rollno int foreign key references student(rollno)  
);
insert into teacher (tid,tname,temail,tcontact,taddress,rollno)
values
(1,'seema','seema@gmail.com',8834567844,'sec 14',3),
(2,'suman','suman@gmail.com',9825478224,'sec 13',3),
(3,'chinu','chinu@gmail.com',6598713568,'sec 12',2),
(4,'jyoti','jyoti@gmail.com',8547123555,'sec 11',1),
(5,'bindu','bindu@gmail.com',8547125878,'sec 10',5);

create table course (
cid int identity (1,1) primary key,
cname varchar(50),
cteacher varchar(50),
ccontact varchar(50),
id int foreign key references student(rollno)
);
insert into course (cid,cname,cteacher,ccontact,id)
values
(1,'bca','shikhar',7734567844,5),
(2,'mca','bumrah',7725478224,4),
(3,'b.com','virat',7798713568,2),
(4,'m.com','rohit',7747123555,2),
(5,'phd','dhoni',7747125878,4);

select student.name,student.email,teacher.tname,teacher.taddress
from student
left join teacher
on student.rollno=teacher.rollno;

select * from teacher
select * from student
select * from course

select * from teacher where taddress='sec 12';

