use nareshit

select * from student_details

update student_details
set student_fee = 30000

insert into student_details
values (1,'manohar',200,24000),
		(4,'pooja',300,24000),
		(5,'manu',400,25000)

select * from student_details

update student_details set student_marks=500

update student_details set student_name='manu'
where student_id='4' and student_fee='24000'

update student_details set student_id = 1

alter table student_details drop column city

alter table student_details
add city varchar(20)

update student_details set city ='hyd'

select * from student_details

update student_details set student_marks ='400'
where student_name='harsh' or student_name='Hemanth'

update student_details set student_marks ='400'
where student_name='manu'
c
