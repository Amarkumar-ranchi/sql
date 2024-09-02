 create database amar;
 use amar; 
 delimiter ##
 create procedure mydisplay1()
 begin
 declare a int;
 declare b int;
 declare total int;
 set a=10;
 set b=20;
 set total=a+b;
 select total as "sum";
 end;
 ##  
 delimiter ;
 call mydisplay1();
 
 
 delimiter ##
 create procedure findsum( a int,b int)
 begin
 declare total int;
 set total=a+b;
 select total as "sum";
 end;
 ##  
 delimiter ;
 call findsum(10,20);
  call findsum(100,200);