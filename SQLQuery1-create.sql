
create database nareshit

use nareshit


create table student_details(
student_id int,
student_name varchar(255),
student_marks float)

select * from student_details
select student_id,student_name from student_details

insert into student_details values
(1, 'harsh', 100),
(2, 'Hemanth', 200),
(3, 'shashi',300),
(4, 'manohar',400)

select * from student_details

-- ================ Identity column ================
/* identity(1,1)   start=1 increment by=1  1,2,3,4
   identity(5,2)   start=5 increment by=2  5,7,9,11 */

create table empoyee_details(Eid int identity(1,1),
								ename varchar(30),
								esalary float)
select * from empoyee_details
insert into empoyee_details values('mahesh',50000),
									('ganesh',60000)
insert into empoyee_details values(null,70000)

create table product(
product_id int identity(1,1),
product_name varchar(30),
product_city varchar(25) not null)

insert into product values ('car','mumbai')
select * from product

create table product1(
product_id int identity(1,1),
product_name varchar(30),
product_city varchar(25))

insert into product1(product_name,product_city)
				values('bus','mumbai')
insert into product1(product_city)values('blr')
select * from product1 