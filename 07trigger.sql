7.Trigger



create table library(bno int(5),bname varchar(40),author varchar(20),allowed_days int(5));
create table library_audit(bno int(5),old_all_days int(5),new_all_days int(5));
insert into library values(1,'Database Systems','Connally T',10);
insert into library values(2,'System Programming','John Donovan',20);
insert into library values(3,'Computer Network & Internet','Douglas E. Comer',18)
insert into library values(4,'Agile Project Management','Ken Schwaber',24);
insert into library values(5,'Python for Data Analysis','Wes McKinney',12);
select*from library;
delimiter //
create trigger tr1
before update on library
for each row
 begin
 insert into library_audit values(new.bno,old.allowed_days,new.allowed_days);
 end//
update library set allowed_days=15 where bno=1; //
update library set allowed_days=25 where bno=2; //
update library set allowed_days=13 where bno=3; //
update library set allowed_days=19 where bno=4; //
update library set allowed_days=17 where bno=5; //
select * from library; //
select * from library_audit; //

