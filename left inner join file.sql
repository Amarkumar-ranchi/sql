create table customers(
cid int PRIMARY KEY,
cname char(15) NOT NULL,
email char(15) NOT NULL UNIQUE,
phone int NOT NULL UNIQUE
);
create table accounts(
mycid int,
accno int PRIMARY KEY,
atype char(2) NOT NULL,
bal double NOT NULL
);
create table address( 
mycid int,
addid int PRIMARY KEY,
street char(15) NOT NULL,
city char(15)NOT NULL,
state char(15) NOT NULL
);

desc customers;
desc accounts;
desc address;

insert into  customers values(101,'sri','sri@jlc.com',111);
insert into  customers values(102,'sagar','sa@jlc.com',222);
insert into  customers values(103,'amit','am@jlc.com',333);
insert into  customers values(104,'rahul','ra@jlc.com',444);
insert into  customers values(105,'vishal','vis@jlc.com',555);
insert into  customers values(106,'ankit','an@jlc.com',666);
insert into  customers values(107,'rohit','ro@jlc.com',777);
insert into  customers values(108,'vivek','viv@jlc.com',888);
insert into  customers values(109,'somesh','so@jlc.com',999);
insert into  customers values(110,'rishi','ris@jlc.com',101);
Update customers
SET cname= 'abhishek',
	email='ab@jlc.com',
    phone=111
    WHERE cid=101;
insert into  accounts values(101,12345,'SA',5000);
insert into accounts values(102,12346,'SA',15000);
insert into accounts values(103,12347,'SA',25000);
insert into accounts values(107,12348,'SA',3000);
insert into accounts values(108,12349,'SA',13000);
insert into  accounts values(109,12350,'SA',18000);

insert into  address values(101,1,'btm','blore','KA');
insert into address values(102,2,'MHA','blore','KA');
insert into address values(103,3,'KOKAR','RAN','JHAR');
insert into address values(109,5,'D1','DELHI','DELHI');
insert into  address values(110,6,'M1','MUMBAI','MH');
insert into  address values(111,7,'P1','PUNE','MH');
insert into  address values(112,8,'PP','PATNA','BR');

select * 
from customers cust
left join accounts acc on cust.cid=acc.mycid;

select cid, cname,phone,accno,bal
from customers cust
left join accounts acc on cust.cid = acc.mycid;

select cid, cname,phone,accno,bal
from customers cust
left join accounts acc on cust.cid = acc.mycid;

select *
from customers cust
left join address addr on cust.cid = addr.mycid;

select cid, cname,phone,city,state
from customers cust
left join address addr on cust.cid = addr.mycid;

select cid, cname,accno,bal,phone,city,state
from customers cust
left join accounts acc on cust.cid = acc.mycid
left join address addr on cust.cid = addr.mycid;
select *
from customers cust
left join accounts acc on cust.cid = acc.mycid
left join address addr on cust.cid = addr.mycid;


select cid, cname,accno,phone,bal,city,state
from customers cust
left join accounts acc on cust.cid = acc.mycid
left join address addr on cust.cid = addr.mycid;