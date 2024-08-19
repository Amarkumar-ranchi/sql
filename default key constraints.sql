create table students1(
sid int primary key ,
sname char (15) NOT NULL,
email char(15) NOT NULL UNIQUE,
phone int NOT NULL UNIQUE,
course char (15) DEFAULT 'java',
city char(15) DEFAULT 'blore'
);
drop table students1;
create table students1(
sid int primary key ,
sname char (15) NOT NULL,
email char(15) NOT NULL UNIQUE,
phone int NOT NULL UNIQUE,
course char (15) DEFAULT 'java',
city char(15) DEFAULT 'blore'
);
insert into students1(sid, sname,email,phone) values(101,'sri','sri@jlc.com',123432);
select * from students1;