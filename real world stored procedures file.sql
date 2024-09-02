 create database amar;
 use amar;
      create table jlcstudents(
      sid int primary key,
      sname char(10) NOT NULL,
      email char(10)NOT NULL,
      totalfee double default 20000,
      feepaid double NOT NULL,
      m1 int,
      m2 int,
      m3 int,
      total int,
      average double,
      grade char(5)
      );
      select * from jlcstudents;
      
      insert into jlcstudents (sid,sname,email,feepaid,m1,m2,m3)values (101,'sri','sri@jlc',5000,60,40,90);
      insert into jlcstudents (sid,sname,email,feepaid,m1,m2,m3)values (102,'amit','am@jlc',15000,80,80,80);
      insert into jlcstudents (sid,sname,email,feepaid,m1,m2,m3)values (103,'sagar','sa@jlc',10000,20,30,40);
      insert into jlcstudents (sid,sname,email,feepaid,m1,m2,m3)values (104,'rahul','ra@jlc',2000,95,96,97);
      
       select * from jlcstudents;
       
                 -- sp ti get the fee balance of given students
                 delimiter ##
                 create procedure getbalance(IN mysid int,OUT mybal double)
                 begin 
                  declare mytotalfee double;
                  declare myfeepaid double;
                   select totalfee, feepaid into mytotalfee,myfeepaid from jlcstudents where sid =mysid;
                   set mybal=mytotalfee - myfeepaid;
                   end;
                   ##
                   delimiter ;
                    
                    select @mybal;
                    call getbalance(101,@mybal);
                    select @mybal;
                    select @mybal;
                   call getbalance(102,@mybal);
                   select @mybal;
                    select @mybal;
                    call getbalance(103,@mybal);
                    select @mybal;
                    select @mybal;
                   call getbalance(104,@mybal);
                    select @mybal;
                  c
                   -- sp to calculate and update the result the given students
                   
                   delimiter ##
                   create procedure findgrade(IN mysid int)
                   begin
                   
                   
                   declare mm1 int;
                    declare mm2 int;
                    declare mm3 int;
                    declare mytotal int;
                    declare myaverage double;
                    declare mygrade char;
                    
                    select m1,m2,m3 into mm1,mm2,mm3 from jlcstudents where sid= mysid;
                    set mytotal=mm1+mm2+mm3;
                    set myaverage = mytotal/3;
                    if(myaverage>=90)then
                    set mygrade='A';
                    elseif(myaverage>=80)then
                    set mygrade ='B';
                    else
                    set mygrade = 'c';
                    end if ;
                    set mygrade=trim(mygrade);
                    update jlcstudents set total=mytotal,average=myaverage,grade=mygrade where sid=mysid;
                    end;
                    ##
                    delimiter ;
                    
                   call findgrade(101);
                   
	select * from jlcstudents;
                   call findgrade(102);
                   call findgrade(103);
                   call findgrade(104);
   select * from jlcstudents;                