create database customers;
use customers;
create table myemployees(
empid int,
empname char (15),
mgrid int
);
insert into myemployees values (101,'sri',103);
insert into myemployees values (102,'vas',103);
insert into myemployees values (103,'sd',null);
insert into myemployees values (104,'ds',101);
insert into myemployees values (105,'aaa',101);
insert into myemployees values (106,'bbb',102); 
update myemployees
SET empname= 'vas'
    WHERE empid=102;

select emp.empname as "EMP Name",mgr.empname as"Manager Name"
from myemployees emp, myemployees mgr
where emp.mgrid= mgr.empid;

select emp.empname as "EMP Name",mgr.empname as"Manager Name"
from myemployees emp inner join
 myemployees mgr where emp.mgrid= mgr.empid;
 
select emp.empname as "EMP Name",mgr.empname as"Manager Name"
from myemployees emp inner join
 myemployees mgr on emp.mgrid= mgr.empid;
 
select emp.empname as "EMP Name",mgr.empname as"Manager Name"
from myemployees emp left join
 myemployees mgr on emp.mgrid= mgr.empid;
 
