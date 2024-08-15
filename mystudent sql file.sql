create database student;
use student;
drop table mystudent;
create table mystudent(
sid int primary key,
sname char(15),
email char(15),
phone long,
city char (15),
course char(15),
bal double
);
drop table mystudent; 
create table mystudents(
sid int primary key,
sname char(15),
email char(15),
phone long,
city char (15),
course char(15),
bal double
);

insert into mystudents values(101,'Sri','sri@jlc',123456,'Blore','Java',9000);
insert into mystudents values(102,'Vas','Vas@jlc',654321,'Blore','Java',15000);
insert into mystudents values(103,'ds','ds@gmail.com',1234,'Blore','DevOps',3000);
insert into mystudents values(104,'sd','sd@gmail.com',4321,'Hyd','AWS',5000);
insert into mystudents values(105,'hello','hello@jlc',5555,'Delhi','Java',8000);
insert into mystudents values(106,'hai','hai@gmail.com',9999,'Blore','AWS',6000);
insert into mystudents values(107,'aaa','aaa@jlc',1111,'Pune','DevOps',22000);
insert into mystudents values(108,'bbb','bbb@jlc',2222,'Delhi','Java',7000);
insert into mystudents values(109,'ccc','ccc@jlc',3333,'Blore','Java',20000);
insert into mystudents values(110,'ddd','ddd@jlc',4444,'Hyd','Python',5000);
insert into mystudents(sid,sname,email,course)
 values(111,'eee','eee@gmail.com','Java');
insert into mystudents(sid,sname,phone,course) values(112,'fff',5555,'Python');



select * from mystudents
where city ='blore'; 

select * from mystudents
where city IN('blore');
select * from mystudents
where city ='blore'OR city = 'hyd';
select * from mystudents
where city IN('blore','hyd');
select * from mystudents
where city = 'hyd'OR city ='delhi'OR city='pune';
select * from mystudents
where city IN ('hyd','delhi','pune');
select * from mystudents
where city != 'hyd'AND city!='blore';
select * from mystudents
where city NOT IN ('hyd','blore');
select * from mystudents
where bal>5000;
select * from mystudents
where bal<= 50000;
select * from mystudents
where bal>=8000 AND bal<=20000;
 select * from mystudents 
 where bal BETWEEN 8000 AND 20000;
 select * from mystudents 
 where bal>8000 AND bal<20000;
 select * from mystudents
 where bal <=8000 OR bal>=20000;
  select * from mystudents 
  where bal<8000 OR bal>20000;
  select * from mystudents
  where bal NOT BETWEEN 8000 AND 20000;
  select * from mystudents
  where bal>=15000 AND city='blore';
  select * from mystudents 
  where bal>=5000 AND city='blore' AND course= 'aws';
  select * from mystudents 
  where course IN ('java','aws','python');
  select * from mystudents
  where city='blore' AND  course IN ('java','aws','python');
  select * from mystudents 
  where bal BETWEEN 8000 AND 20000 AND course IN ('java','aws')AND city IN('blore','delhi');
  select * from mystudents
  where sname LIKE 's%';
  select * from mystudents
  where sname LIKE '%s';
  select * from mystudents
  where sname LIKE '_a%';
  select * from mystudents
  
  
  where sname LIKE '%d%';
  select * from mystudents
  where sname LIKE '%a_'; 
  select * from mystudents 
  where email LIKE '%gmail.com';
  select * from mystudents
  where city IS NULL;
  select * from mystudents
  where phone IS NOT NULL;
  select * from mystudents
  where sname LIKE'_a%'AND city= 'blore'AND bal>=10000;
  select * from mystudents
  where email LIKE '%gmail.com'AND city!='blore'AND bal<=10000;
  select * from mystudents
  order by bal asc;
  select * from mystudents
  order by bal desc;
  select * from mystudents
  where city ='blore'
  order by sname;
  create table jlcstudents(
sid int primary key,
sname char(15),
city char(15),
course char(15),
feepaid double,
feebal double,
status char(10)
);
drop table jlcstudents;
create table jlcstudents(
sid int primary key,
sname char(15),
city char(15),
course char(15),
feepaid double,
feebal double,
status char(10)
);
insert into jlcstudents values(101,'sri','Blore','Java',10000,10000,'Active');
insert into jlcstudents values(102,'vas','Hyd','AWS',5000,15000,'Active');
insert into jlcstudents values(103,'sd','Delhi','Java',12000,8000,'Active');
insert into jlcstudents values(104,'ds','Blore','Python',8000,12000,'Active');
insert into jlcstudents values(105,'aa','Pune','Java',15000,5000,'InActive');
insert into jlcstudents values(106,'bb','Blore','Java',10000,10000,'InActive');
insert into jlcstudents values(107,'cc','Delhi','Python',12000,8000,'InActive');
insert into jlcstudents values(108,'dd','Blore','Java',8000,12000,'Active');
insert into jlcstudents values(109,'hello','Pune','Python',5000,15000,'Active');
insert into jlcstudents values(110,'hai','Delhi','Java',15000,15000,'Active');
insert into jlcstudents(sid,sname,course,feepaid,feebal)
values(111,'abc','Python',5000,15000);
insert into jlcstudents(sid,sname,course,feepaid,feebal)
values(112,'xyz','Java',5000,15000);
select * from jlcstudents;
select count(*) from jlcstudents;
select count(sid) from jlcstudents;
select count(*)as "total students" from jlcstudents;
select count(*)as"total number of student" from jlcstudents;
select count(*)from jlcstudents
where course ='java';
select count(*)from jlcstudents
where course= 'java'AND city='blore';
select count(*)from jlcstudents
where city is NOT NULL;
select count(course)from jlcstudents;
select count(DISTINCT course)from jlcstudents;
select count(city)from jlcstudents;
select count(DISTINCT city)from jlcstudents;
select sum(feepaid)from jlcstudents;
select sum(feepaid) AS "total fee collected" from jlcstudents;
select sum(feepaid)  from jlcstudents
where course='java';
select sum(feepaid) AS"total fee collected of java " from jlcstudents
where course='java';
 select sum(feepaid)  from jlcstudents
where course='java'AND city='blore';
select sum(feepaid) AS"total fee collection of java from blore" from jlcstudents
where course='java'AND city='blore';
select min(feepaid) from jlcstudents;
select max(feepaid)from jlcstudents;
select min(feebal)from jlcstudents;
select max(feebal)from jlcstudents;
select avg(feepaid)from jlcstudents;
select sum(feepaid)/count(feepaid) from jlcstudents;
select max(sid)+1 from jlcstudents;
select min(sid)+1 from jlcstudents;
select course,sum(feepaid) from jlcstudents
group by course;
select course,sum(feepaid) from jlcstudents
group by course
having course IN ('JAVA','PYTHON'); 
select course,count(*)from jlcstudents
group by course; 
select course ,count(*)from jlcstudents
group by course
having course IN ('java','python');
select city ,sum(feebal) from jlcstudents
group by city ;
select city ,sum(feebal)from jlcstudents
group by city
having city IN ('blore','delhi');
select city,count(*)from jlcstudents
group by city;
select city,count(*)from jlcstudents
group by city
having city IN('blore','delhi');
select status,count(*)from jlcstudents
group by status;
 select course,sum(feepaid)from jlcstudents
group by course 
order by course asc;  
select course ,sum(feepaid)from jlcstudents
group by course
order by course desc; 