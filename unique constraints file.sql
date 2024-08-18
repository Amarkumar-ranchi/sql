create table mycustomers2( 
cid int NOT NULL UNIQUE,
cname char(15) NOT NULL,
email char(15) NOT NULL UNIQUE,
phone int(10) UNIQUE,
city char(15)
);
drop table mycustomers2;
show tables;
describe table mycustomers2;
show databases;
create table mycustomers2( 
cid int NOT NULL UNIQUE,
cname char(15) NOT NULL,
email char(15) NOT NULL UNIQUE,
phone int UNIQUE,
city char(15)
);
DROP table mycustomers2;
create table mycustomers2( 
cid int NOT NULL UNIQUE,
cname char(15) NOT NULL,
email char(15) NOT NULL UNIQUE,
phone int UNIQUE,
city char(15)
);
 
insert into mycustomers2 values(101,'sri','sri@myjlc.com',5643728,'blore');
insert into mycustomers2 values(102,'sd','sd@myjlc.com',5743728,'noida');
insert into mycustomers2 values(103,'sagar','sg@myjlc.com',6543728,'delhi');
insert into mycustomers2 values(104,'somesh','som@myjlc.com',56435728,'blore');
insert into mycustomers2 values(105,'amit','am@myjlc.com',5645728,'bokaro');
insert into mycustomers2 values(106,'vivek','vk@myjlc.com',5648728,'jamshedpur');
insert into mycustomers2 values(107,'rahul','ra@myjlc.com',5649828,'ranchi');
insert into mycustomers2 values(108,'vishal','vis@myjlc.com',5612728,'gurugram');
insert into mycustomers2 values(109,'ankit','an@myjlc.com',5689728,'hyderbad');
insert into mycustomers2 values(110,'rohit','ro@myjlc.com',5676728,'blore');
insert into mycustomers2 values(111,'anurag','au@myjlc.com',5640928,'giridih');
insert into mycustomers2 values(112,'atul','at@myjlc.com',56454628,'deoghar');
insert into mycustomers2 values(113,'manthan','ma@myjlc.com',56487728,'blore');
insert into mycustomers2 values(114,'abhishek','ab@myjlc.com',56435628,'patna');
insert into mycustomers2 values(115,'shivam','sh@myjlc.com',56437428,'kolkata');
insert into mycustomers2 values(116,'subodh','su@myjlc.com',564367028,'chennai');
insert into mycustomers2 values(117,'risbabh','ris@myjlc.com',56403728,'blore');
insert into mycustomers2 values(118,'rishikesh','rik@myjlc.com',564390728,'blore');
insert into mycustomers2 values(119,'ajay','aj@myjlc.com',5603728,'noida');
insert into mycustomers2 values(120,'bhagirath','bh@myjlc.com',564037218,'blore');
select * from mycustomers2;


