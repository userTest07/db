3.Joins


create table inst ( inst_id int(10),inst_name varchar(20), inst_salary int(20));
create table department(dept_id int(10), dept_name varchar(20), inst_id int(20));
INSERT INTO inst VALUES(1,'Prachi',50000);
INSERT INTO inst VALUES(2,'Apurva',51000);
INSERT INTO inst VALUES(3,'Sayali',52000);
INSERT INTO inst VALUES(4,'Sakshi',55000);
INSERT INTO inst VALUES(5,'Tanaya',40000);
INSERT INTO inst VALUES(6,'Aarya',30000);
INSERT INTO inst VALUES(7,'Rutuja',60000);
INSERT INTO inst VALUES(8,'Aakansha',40000);
INSERT INTO inst VALUES(9,'Tahseen',45000);
INSERT INTO inst VALUES(10,'Apurva',50000);
INSERT INTO inst VALUES(11,'Kanishka',20000);
INSERT INTO inst VALUES(12,'Aditi',45000);
INSERT INTO inst VALUES(13,'Shubham',30000);
Select * from inst;
INSERT INTO department VALUES(111,'Computer',1);
INSERT INTO department VALUES(222,'IT',2);
INSERT INTO department VALUES(333,'Electrical',3);
INSERT INTO department VALUES(444,'Mechanical',4);
INSERT INTO department VALUES(555,'Civil',5);
INSERT INTO department VALUES(666,'AIML',6);
INSERT INTO department VALUES(777,'AIDS',7);
INSERT INTO department VALUES(888,'ECE',8);
INSERT INTO department VALUES(999,'ENTC',9);
Select * from department;
Select * from inst INNER JOIN department ON inst.inst_id=department.inst_id;
Select * from inst LEFT JOIN department ON inst.inst_id=department.inst_id;
Select * from department LEFT JOIN inst ON inst.inst_id=department.inst_id;
Select * from department RIGHT JOIN inst ON inst.inst_id=department.inst_id;
Select * from department FULL JOIN inst ON inst.inst_id=department.inst_id;

select inst_name from inst where inst_salary=(select max(inst_salary) from inst);
select inst_name from inst where inst_id  in (select inst_id from department);
create view inst_view as select inst_name,inst_salary from inst where inst_salary>50000;
select * from inst_view;
UPDATE inst_view SET inst_salary=55000 WHERE inst_name='Sakshi';
select * from inst_view;
CREATE OR REPLACE view inst_view AS SELECT inst_id,inst_name,inst_salary FROM inst WHERE inst_salary >40000;
select * from inst_view
select distinct dept_name from department;
select avg(inst_salary) from inst;
select count(inst_name) from inst,department where dept_name='IT';
select count(inst_id) from department where dept_name='IT';
select sum(inst_salary) from department,inst where dept_name='Computer';
select sum(inst_salary) from inst,department;
