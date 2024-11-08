1.DDL+DML
(SQL 10 Queries)


create database practical493;
use practical493;
create table Employee(emp_no int,emp_name varchar(20),date date,position varchar(20));
alter table Employee add salary int;
insert into Employee values('1','shravani','2024-8-1','HR','15000');

insert into Employee values('2','dhanshri','2024-7-12','manager','100
00');
insert into Employee values('3','meghraj','2024-6-15','ceo','11000');
insert into Employee values('4','sumit','2024-6-15','ceo','12000');
insert into Employee values('5','vaishnavi','2024-5-15','clerk','1000
0');
insert into Employee values('6','sakshi','2024-3-12','clerk','9000');
create table TE(emp_no int,emp_name  varchar(20),join_date date,position varchar(20),salary int);
insert into TE values('1','vaibhavi','2024-7-12','clerk','3000');
insert into TE values('2','renuka','2024-3-10','ceo','15000');
insert into TE values('3','samruddhi','2024-2-10','hr','10000');
insert into TE values('4','shruti','2024-2-10','manager','12000');
insert into TE values('5','kshitija','2024-2-11','manager','11000');
select* from TE;
select* from Employee;

update TE set emp_name='aishwarya' where emp_no='5';
select* from TE;
select * from Employee union select * from TE;

select * from Employee union all select * from TE;

select distinct emp_no from Employee where emp_no in (select emp_no f
rom TE);

select * from Employee;

select * from TE;

select distinct emp_name from Employee where emp_name in (select emp_
name from TE);
select * from Employee;

select * from TE;

select distinct emp_name from Employee where emp_name in (select emp_name from TE);
Empty set (0.00 sec)

select min(salary) from Employee;

select max(salary) from Employee;

select sum(salary) from Employee;

select avg(salary) from Employee;

select count(salary) from Employee;

select lcase(emp_no) from Employee;

select ucase(emp_no) from Employee;

select lcase(salary) from Employee;

select mid(emp_no,1,3) from Employee;

select mid(emp_no,1,3) from Employee;

select mid(emp_no,1,5) from Employee;

select mid(salary,1,3) from Employee;

select mid(salary,1,5) from Employee;

select mid(emp_no,1,2) from Employee;
