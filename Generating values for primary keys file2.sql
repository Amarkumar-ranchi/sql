create database students1;
use students1;

create table students( 
sid int primary key AUTO_INCREMENT,
sname char(15)not null,
phone int unique not null
)AUTO_INCREMENT=101;

insert into students (sname,phone)values('vas',321 );
insert into students (sname,phone)values('sd',432 );
insert into students (sname,phone)values('am',121 );
insert into students (sname,phone)values('nd',987 );

select * from students;
