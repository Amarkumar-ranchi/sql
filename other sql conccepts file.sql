-- Alter statement
 create database students1;
 use students1;        
          create table mycustomers(
                cid int primary key,
                   cname char (15),
                      email char(15),
                   phone long,
                 city char(15)
                       );
 insert into mycustomers (cid,cname,email,phone,city)values(101,'sri','sri@jlc',999,'blore');                      
  insert into mycustomers(cid,cname,email,phone,city) values(102,'amit','am@jlc',111,'blore');                      
   insert into mycustomers(cid,cname,email,phone,city) values(103,'rishi','ri@jlc',222,'blore');   
    insert into mycustomers (cid,cname,email,phone,city)values(104,'sagar','sa@jlc',333,'blore');                      
     insert into mycustomers(cid,cname,email,phone,city) values(105,'vishal','vis@jlc',444,'blore');                       
     insert into mycustomers(cid,cname,email,phone,city) values(106,'rahul','ra@jlc',555,'blore');           
     insert into mycustomers(cid,cname,email,phone,city) values(107,'rohit','sro@jlc',666,'blore');                      
  insert into mycustomers(cid,cname,email,phone,city) values(108,'ankit','an@jlc',777,'blore');                      
   insert into mycustomers(cid,cname,email,phone,city) values(109,'vivek','v@jlc',888,'blore');   
    insert into mycustomers (cid,cname,email,phone,city)values(110,'somu','so@jlc',999,'blore');                      
     insert into mycustomers(cid,cname,email,phone,city) values(111,'ris','r@jlc',101,'blore');                       
     insert into mycustomers(cid,cname,email,phone,city) values(112,'anurag','a@jlc',102,'blore');         
 select * from mycustomers;     
       -- Adding new column
 ALTER TABLE  mycustomers
         ADD status char(15)
 AFTER city;
       select * from mycustomers;  
ALTER TABLE  mycustomers
        ADD gender char(15)
 AFTER status;
 select * from mycustomers;  
       -- dropping new column 
      ALTER TABLE  mycustomers
          DROP  COLUMN status;  
 select * from mycustomers;
 ALTER TABLE  mycustomers
          MODIFY city char(10);  
              ALTER TABLE  mycustomers
                    MODIFY gender char(10);
           -- droping primary key
 ALTER TABLE  mycustomers
        DROP primary key ;          
            -- adding primary key
 ALTER TABLE  mycustomers
         ADD primary key (cid);          
      -- Renaming column
      ALTER TABLE mycustomers
         RENAME TO hellocustomers;     
    select * from mycustomers;
           -- mycustomers table does not exist
    select * from hellocustomers; 
              -- special queries
          
          -- display the record from mth to nth row
            select * from hellocustomers limit 0,5;
                      select * from hellocustomers limit 5,5;
             select * from hellocustomers limit 10,5;
             
             -- display the nth row
              select * from hellocustomers limit 6,1;
                    select * from hellocustomers limit 6,5;
              
              -- display the top n records
               select * from hellocustomers limit 5;