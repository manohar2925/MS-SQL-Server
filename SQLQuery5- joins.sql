use nareshit

/* ================== JOINS ========================

Information retrive methods

1. selection: with where condition from single table
2. projection : with out where condition from a single table 
3. Joins : Retrive the information from multiple tables

1Q) what is the joining creteria*/

create table student_details1
(stid int, std_name varchar (30), std_mail varchar (30),course_id int)

create table course_details
(course_id int, course_name varchar(30),numm decimal (6,2))

insert into student_details1
values (1,'akshay','akshay@gmail.com',111),
		(2,'manu','manu@gmail.com',222),
		(3,'praveen','praveen@gmail.com',333),
		(4,'avinash','avinash@gmail.com',444),
		(5,'kiran','kiran@gmail.com',555)

insert into course_details
values (111,'data',1000),
		(222,'science',1200),
		(333,'maths',800)


select * from student_details1

select * from course_details


select * from student_details1 inner join course_details
on
student_details1.course_id=course_details.course_id

select * from student_details1 inner join course_details
on
student_details1.stid=course_details.course_id

insert into course_details values (111,'IOT',1500)
insert into course_details values (222,'commerce',800)

select * from course_details
select * from student_details1

select * from student_details1 inner join course_details
on 
student_details1.course_id=course_details.course_id

insert into course_details values (555,'cs',3000),(666,'block chain',4000)

select * from course_details left outer join student_details1
on
course_details.course_id=student_details1.course_id


select * from student_details1 left outer join course_details
on
course_details.course_id=student_details1.course_id


select * from course_details left outer join student_details1
on
course_details.course_id=student_details1.stid

select * from  student_details1 left outer join course_details
on
course_details.course_id=student_details1.stid

select * from course_details full outer join student_details1
on
course_details.course_id=student_details1.course_id


select * from course_details right outer join student_details1
on
course_details.course_id=student_details1.course_id