4.Library


create table Fine(rno int, Sname varchar(30),DOI date, bookname varchar(20), Status varchar(10));
insert into Fine values(1, 'Aditya', '2024-07-05', 'SPOS', 'returned');
insert into Fine values(22, 'Dhiraj', '2024-07-09', 'HTML&CSS', 'issued');
insert into Fine values(59, 'Suraj', '2024-05-12', 'ReactJS', 'returned');
insert into Fine values(61, 'Onkar', '2024-07-12', 'TOC', 'issued');
insert into Fine values(74, 'Pratik', '2024-06-29', 'CNS', 'issued');
select * from Fine;
create table Fine(roll_no int,fine_date date,amount varchar(20));
delimiter // 
create procedure fine_c(IN rno int(3),bname varchar(20)) 
begin 
declare i_date date; 
declare diff int; 
declare fine_amt int; 
declare exit handler for sqlexception select 'Table not Found'; 
select DOI into i_date from borrower where roll_no=rno and book_name= 
bname; 
select datediff(curdate(),i_date) into diff; 
if(diff>15 and diff<=30) then 
set fine_amt = diff*5; 
insert into fine values(rno,curdate(),fine_amt); 
elseif(diff>30) then 
set fine_amt = 15*5 + (diff-30)*50; 
insert into fine values(rno,curdate(),fine_amt); 
end if; 
update borrower set status='returned' where rollno=rno and book_name=bname; 
end; 
// 
call fine_c(1,'SPOS');// 
