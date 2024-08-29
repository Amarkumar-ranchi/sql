               -- transaction is set of database operations performing as atomic unit
 -- when all the opertions in transaction are success then transaction is success and it has to commited 
          -- when anyone opertions in transaction is failed then transaction is failed and it has to rolled back 
               -- all db vendors have to provide the facility of transaction management  
               
 create database students1;
          use students1;
                create table myaccounts(
           mycid int,
       accno int primary key,
         atype char(2),
            branch char (10),
               bal double
);

                 insert into myaccounts values(101,555,'SA','btm',25000);
insert into myaccounts values(101,999,'CA','btm',55000);

          -- see the records
          
     select * from myaccounts;
     
     select * from myaccounts;
              update myaccounts 
                set bal=45000
                  where accno=555;
                 select * from myaccounts;
              rollback;
          select * from myaccounts;
    
    -- it is not rolling back right.
     
                       insert into myaccounts values(102,666,'SA','BTM',5000);
                  update myaccounts 
               set bal=55000
           where accno=666;
     select * from myaccounts;
          rollback;
           select * from myaccounts;
     
     -- it is not rolling back right.
     
     -- Disable auto commit 
     
                  set autocommit=0;
     
      select * from myaccounts;
       update myaccounts 
          set bal=45000
             where accno=555;
                 select * from myaccounts;
     rollback;
      select * from myaccounts;
      
        -- it is rolling back right
     
     insert into myaccounts values(105,777,'SA','BTM',5000);
         update myaccounts 
             set bal=55000
               where accno=666;
                   select * from myaccounts;
     rollback; 
              select * from myaccounts;
     
       -- it is rolling back right