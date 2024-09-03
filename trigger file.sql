                    -- trigger is a pl/sql block with name.
                    /* trigger will be invoked by dbms automatically when even you update or delete or insert 
                               the records into the tables */
                    -- no need to call trigger explicitly like stored procedure.
                    /* trigger will be used to run the business logic on database side automatically when
                                some db operation is happend.*/ 
                    
 
 create database amar;
 use amar;
 create table mystudents(
 sid int primary key,
 sname char(25)NOT NULL,
 email char(25)NOT NULL,
 phone long
 );
 select * from mystudents;
 
 insert into mystudents values(101,'sri','sri@jlc',111);
  insert into mystudents values(102,'amit','am@jlc',222);
   insert into mystudents values(103,'sagar','sa@jlc',333);
    insert into mystudents values(104,'rahul','ra@jlc',444);
    select * from mystudents;
    
    
    create table mystudents_backup(
    sid int,
    sname char(25),
    email char(25),
    phone long,
    action char(15),
    actiondate date
    );
    
    select * from mystudents_backup;
    
    
    delimiter ##
    create trigger t1
    BEFORE UPDATE
    ON mystudents
    FOR EACH ROW
    begin
    declare mysid int;
    declare mysname char(25);
    declare myemail char(25);
    declare myphone long;
    declare myaction char(15);
    declare myactiondate date;
    set mysid=OLD.sid;
          set mysname=OLD.sname;
              set myemail=OLD.email;
          set myphone=OLD.phone;
              set myaction='update';
          set myactiondate=sysdate();
          insert into mystudents_backup values(mysid,mysname,myemail,myphone,myaction,myactiondate);
          end;
          ##
          delimiter ;
          
          select * from mystudents;
           select * from mystudents_backup;
           
           update mystudents
           set email = 'aaa@gmail.com',
           phone= 123456 where sid= 101;
           
           select * from mystudents;
           select * from mystudents_backup;
           
           
            
    
    delimiter ##
    create trigger t2
    BEFORE DELETE
    ON mystudents
    FOR EACH ROW
    begin
    declare mysid int;
    declare mysname char(25);
    declare myemail char(25);
    declare myphone long;
    declare myaction char(15);
    declare myactiondate date;
    set mysid=OLD.sid;
          set mysname=OLD.sname;
              set myemail=OLD.email;
          set myphone=OLD.phone;
              set myaction='update';
          set myactiondate=sysdate();
          insert into mystudents_backup values(mysid,mysname,myemail,myphone,myaction,myactiondate);
          end;
          ##
          delimiter ;
          
          select * from mystudents;
           select * from mystudents_backup;
           
           delete from mystudents where sid=104;
           
           select * from mystudents;
           select * from mystudents_backup;
           
           update mystudents
           set email = 'srinivas@gmail.com',
           phone= 1023431 where sid= 101;
           
           select * from mystudents;
           select * from mystudents_backup;
           
           