select * from student_details

ALTER table student_details
add city varchar(30)

ALTER table student_details
add student_fee float,
	student_department char 

alter table student_details drop column city

select * from student_details

alter table student_details 
alter column student_fee int

sp_rename 'student_details.student_name','SNAME' , 'column'

alter table student_details drop column student_fee,student_department

select * from student_details1

EXEC sp_rename 'student_details.SNAME','student_name','column'


sp_rename 'student_details','student_details1'

alter table student_details1
add student_gender varchar(11)

alter table student_details1 alter column student_gender float

sp_rename 'student_details1.student_gender', 'student_fee'

select * from student_details

sp_rename 'student_details1','student_details'


