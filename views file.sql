                -- views are database objects like tables 
             -- views are also called as logical tables 
-- views contains only the schema part it does not contain the data physically
-- view is mainly used to provide the restrictions on columns of a table to particular
            -- views will be created ased on one or more existing tables
            
            create database students1;
use students1;

create table customers(
cid int primary key,
cname char(15)not null,
email char(15)unique not null,
phone int unique not null,
city char (15) not null,
status char(15)not null,
accno int unique not null,
atype char(15)not null,
branch char(10) not null,
bal double
);

insert into customers values(101,'sri','sri@gmail.com',123,'blore','Active',5001,'SA','btm',25000);
                 insert into customers values(102,'amit','am@gmail.com',321,'ran','Active',5002,'SA','piska more',50000);
             insert into customers values(103,'sagar','sg@gmail.com',765,'blore','Active',5003,'SA','kamre',20000);
         insert into customers values(104,'rahul','ra@gmail.com',111,'delhi','Active',5004,'CA','kokar',55000);
     insert into customers values(105,'vishal','vis@gmail.com',222,'HYD','Active',5005,'SA','ag road',35000);
         insert into customers values(106,'ankit','an@gmail.com',333,'chandigarh','Active',5006,'CA','dhurwa',45000);
                     insert into customers values(107,'bhagii','bh@gmail.com',444,'gangtok','Active',5007,'SA','ratu',15000);
                         insert into customers values(108,'rohit','ro@gmail.com',555,'raipur','Active',5008,'SA','ratu road',15000);
                     insert into customers values(109,'abhi','ab@gmail.com',666,'patna','Active',5009,'CA','mg road',85000);
           insert into customers values(110,'rishi','ri@gmail.com',777,'bhopal','Active',5010,'SA','pg path',95000);
        insert into customers values(111,'vivek','viv@gmail.com',888,'kolkata','Active',5011,'CA','ram chowk',25000);
insert into customers values(112,'mohit','mo@gmail.com',999,'chennai','Active',5012,'SA','sri chowk',25200);

select * from customers;

-- view for bank teller and chevk it

create view teller_view as
select  cid ,cname,city,accno,atype,bal from customers; 

select * from teller_view;

-- view for bank teller city wise and check it

create view blore_teller_view as
select  cid ,cname,city,accno,atype,bal from customers where city ='blore'; 

select * from  blore_teller_view;

create view delhi_teller_view as
select  cid ,cname,city,accno,atype,bal from customers where city ='delhi'; 

select * from  delhi_teller_view;

create view hyd_teller_view as
select  cid ,cname,city,accno,atype,bal from customers where city ='hyd'; 

select * from  hyd_teller_view;

-- view for support team and check it

create view support_view as
select  cid ,cname,email,phone,city,status from customers; 
 
 select * from support_view;

