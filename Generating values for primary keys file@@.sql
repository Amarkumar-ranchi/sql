create database students1;
use students1;

create table students1( 
sid int primary key,
sname char(15)not null,
phone int unique not null
);

create table students2( 
sid int primary key AUTO_INCREMENT,
sname char(15)not null,
phone int unique not null
);

INSERT INTO students1 values(101,'sri',123);

select * from students1;
insert into students2 (sname,phone)values('vas',321 );
insert into students2 (sname,phone)values('sd',432 );
insert into students2 (sname,phone)values('am',121 );
insert into students2 (sname,phone)values('nd',987 );

select * from students2;