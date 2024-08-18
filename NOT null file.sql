create table mycustomers1(
cid int NOT NULL,
cname char (15) NOT NULL,
email char (15) NOT NULL,
phone int,
city char(15) 
);

insert into mycustomers1(cid,cname,email) values (101,'sri','srimyjilc@.com');
insert into mycustomers1 values(102,'sd','sdmyjlc@.com',6554321,'blore');
insert into mycustomers1 values(103,'amit','amitmyjlc@.com',6565321,'bokaro');
insert into mycustomers1 values(104,'sagar','sagarmyjlc@.com',655675421,'ranchi');
insert into mycustomers1 values(105,'rahul','rahulmyjlc@.com',6576321,'delhi');
insert into mycustomers1 values(106,'vishal','vismyjlc@.com',6557621,'noida');
insert into mycustomers1 values(107,'amar','amarmyjlc@.com',6532321,'blore');
insert into mycustomers1 values(108,'ankit','ankmyjlc@.com',65565421,'hydrabad');
insert into mycustomers1 values(109,'rohit','rdmyjlc@.com',6587321,'pune');
insert into mycustomers1 values(110,'sms','smsmyjlc@.com',6565321,'dhanbad');
insert into mycustomers1 values(111,'vivek','vivmyjlc@.com',65567321,'tata');
select * from mycustomers1;