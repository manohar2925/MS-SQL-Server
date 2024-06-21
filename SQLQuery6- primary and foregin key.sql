use nareshit

-- step-1:

create table department(deptno int primary key,
						dname varchar(40),
						location varchar (40)) -- parent table

-- step-2:

insert into department values (10,'ECE','hyd'),(20,'EEE','blr'),(30,'CSE','chennai')

select * from department


- step-3

create table employee (EmpID int,
						EName varchar(40),
						salary money,
						Deptno Int
						foreign key Reference