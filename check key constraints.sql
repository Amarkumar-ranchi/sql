create table students2(
sid int primary key,
sname char(15)NOT NULL,
email char(15)NOT NULL UNIQUE,
phone int (10) UNIQUE,
course char (15) DEFAULT 'java',
totalfee double CHECK(totalfee>=25000)
);
drop table students2;
create table students2(
sid int primary key,
sname char(15)NOT NULL,
email char(15)NOT NULL UNIQUE,
phone int UNIQUE,
course char (15) DEFAULT 'java',
totalfee double CHECK(totalfee>=25000)
);
insert into students2 values(101, 'sri','sri@jlc.com',13453765,'python',25000);