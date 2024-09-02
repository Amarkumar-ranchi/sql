 create database amar;
 use amar;
                              -- sum of even numbers from 1 to given numbers
 
  delimiter $$
  create procedure findeventotal15(num int)
  begin
  declare i int;
  declare total int;
  
  set i=1;
  set total=0;
  
  repeat 
  if (i mod 2=0)then
  set total =total+i;
  end if;
  set i=i+1;
  until i >num
  end repeat;
  select total as"sum";
  end;
  $$
  delimiter ;  
  call findeventotal15(10);
  
  