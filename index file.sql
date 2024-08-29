create database students1;
use students1;
create table students( 
sid int primary key AUTO_INCREMENT,
sname char (15) not null,
phone int unique not null
)AUTO_INCREMENT=101;

insert into students (sname,phone) values('amit',777);
insert into students (sname,phone) values('rahul',666);
insert into students (sname,phone) values('vishal',555);
insert into students (sname,phone) values('ankit',099);

-- sql engine search the student sequencally because no indexes created as of now for phone and sname columns
 
 select * from students 
 where phone=777;
 
 select * from students 
 where sname='rahul';
 
 -- sql engine search the student very fastly because sequencally because indexes created now for phone and sname columns 
 
 create index phone_index on students(phone);
 select * from students 
 where phone=777;
 
create index sname_index on students(sname);
select * from students 
 where sname='rahul';
 
