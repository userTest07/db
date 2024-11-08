2.DDL
(Table_View_Index)



create table Student(rollno int, studname varchar(255), Age int, Address varchar(50));
insert into Student(rollno, studname, Age, Address) values(1, 'rani', 19, 'Pune');
insert into Student(rollno, studname, Age, Address) values(22, 'raju', 20, 'Baramati');
insert into Student(rollno, studname, Age, Address) values(59, 'Sonu', 20, 'Siddhatek');
insert into Student(rollno, studname, Age, Address) values(61, 'Aarati', 20, 'Malshiras');
insert into Student(rollno, studname, Age, Address) values(72, 'riya', 20, 'Paranda');
insert into Student(rollno, studname, Age, Address) values(74, 'rusha', 20, 'Parbhani');
insert into Student(rollno, studname, Age, Address) values(65, 'kavi', 20, 'Baramati');
insert into Student(rollno, studname, Age, Address) values(68, 'bhagu', 20, 'Saswad');
select * from Student;
alter table Student drop column Age;
select * from Student;
select rollno, studname from Student;
select rollno, studname from Student where rollno>=60;
create view view1 as select rollno,Address from Student;
select * from view1;
alter table Student ADD Age int;
