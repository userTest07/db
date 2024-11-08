6.Cursor



create table Roll_o(Rollno int, Name varchar(30), address varchar(30));
create table Roll_n(Rollno int, Name varchar(30), address varchar(30));
insert into Roll_o values(1,’onkar’,'Pune');
insert into Roll_o values(22,'Dhiraj','Baramati');
insert into Roll_o values(26,'Siddhesh','Junnar');
insert into Roll_o values(54,’Om’,'Nashik');
insert into Roll_o values(59,'Suraj','Daund');
select * from Roll_o;
delimiter //
create procedure proc_1(in r1 int)
begin
declare r2 int;
declare exitloop boolean;
declare c1 cursor for select Rollno from Roll_o where Rollno>r1;
declare continue handler for not found set exitloop = true;
open c1;
eloop : loop
fetch c1 into r2;
if not exists(select * from Roll_n where Rollno=r2)
then
insert into Roll_n select * from Roll_o where Rollno=r2;
end if;
if exitloop
then
close c1;
leave eloop;
end if;
end loop eloop;
end;
//
call proc_1(22);
//
select * from Roll_n;
//
call proc_1(0);
//
select * from Roll_n;
//
