create table students( 
bid char(3),
sid int,
sname char(15) NOT NULL,
email char(15) NOT NULL UNIQUE,
phone int NOT NULL UNIQUE,
course char(15),
primary key(bid,sid)
);
insert into students values('B1',101,'sri','sri@myjlc.com',5643728,'java');
insert into students values('B1',102,'sd','sd@myjlc.com',5743728,'python');
insert into students  values('B1',103,'sagar','sg@myjlc.com',6543728,'aws');
insert into students values('B1',104,'somesh','som@myjlc.com',56435728,'data science');
insert into students values('B1',105,'amit','am@myjlc.com',5645728,'data analysist');
insert into students values('B1',106,'vivek','vk@myjlc.com',5648728,'cloud');
insert into students values('B1',107,'rahul','ra@myjlc.com',5649828,'c++');
insert into students values('B1',108,'vishal','vis@myjlc.com',5612728,'web develpment');
insert into students values('B1',109,'ankit','an@myjlc.com',5689728,'mern full stack');
insert into students  values('B1',110,'rohit','ro@myjlc.com',5676728,'testing');
insert into students values('B2',101,'anurag','au@myjlc.com',5640928,'c++');
insert into students  values('B2',102,'atul','at@myjlc.com',56454628,'testing');
insert into students values('B2',103,'manthan','ma@myjlc.com',56487728,'aws');
insert into students values('B2',104,'abhishek','ab@myjlc.com',56435628,'java');
insert into students values('B2',105,'shivam','sh@myjlc.com',56437428,'data analysist');
insert into students values('B2',106,'subodh','su@myjlc.com',564367028,'data science');
insert into students values('B2',107,'risbabh','ris@myjlc.com',56403728,'web develpment');
insert into students  values('B2',108,'rishikesh','rik@myjlc.com',564390728,'cloud');
insert into students values('B2',109,'ajay','aj@myjlc.com',5603728,'mern full stack');
insert into students values('B2',110,'bhagirath','bh@myjlc.com',564037218,'python');
select * from students
where bid= 'b2' and sid = 103;
select * from students
where bid= 'b1' and sid = 103;
select * from students
where bid= 'b2' and sid = 102;