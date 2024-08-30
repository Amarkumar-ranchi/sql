      -- built in function
      -- arithmetic function 
      -- sqrt()
      
      create database students1;
                use students1;  
                           select sqrt(25);
                         select sqrt(4);
                       select sqrt(625);
                    select sqrt(16);
                       select sqrt(36);
                          select sqrt(100); 
			
-- power()
                           select power(25,2);
                         select pow(4,2);
                       select power(625,0);
                    select pow(16,4);
                       select pow(36,5);
                          select power(100,10);
 -- mod()
                             select mod(10,2); 
                          select mod(19,3); 
                       select mod(15,4);
                      select mod(627,25); 
                         select mod(111,2); 
                            select mod(79,7); 
 
-- abs
			                 select abs(9);
                          select abs(-9);
			                select abs(8);
			                   select abs(-8);
-- ceil                               
                                select ceil(5);
                              select ceil(5.2);
                                 select ceil(5.9);
-- floor 
                                      select floor(5);
                                   select floor(5.2);
                                      select floor(5.9);
-- round()
                                         select round(5);     
                                      select round(5.2);     
                                         select round(5.9);     
                                      
                                      
                    -- string function 

 -- length()
        select length('amit');  
         select length( 'am  it ' );  
          
-- trim()          
    select trim(  'am  it '  );
       select length( trim(  'am  it '  ));
-- ltrim
        select ltrim(  'am  it '  );
           select length( ltrim(  'am  it '  ));
   -- rtrim
        select rtrim(  'am  it '  );
           select length( rtrim(  'am  it '  ));
 -- rpad
                 select rpad('jlc',5,'*');
             select rpad('jlc',6,'*'); 
             select rpad('jlc',3,'*');
                 select rpad('jlc',2,'*');
 -- lpad                
select lpad('jlc',5,'*');
             select lpad('jlc',6,'*'); 
             select lpad('jlc',3,'*');
                 select lpad('jlc',2,'*');  
                 
 -- substr                
       select substr('srinivas',4);
        select substring('srinivas',3,4);
         select substring('srinivas',5,4);
          select substring('srinivas',2,4);
-- lower
          select lower('sriNivas');
           select lower('Amit');
            select lower('SAgar');
             select lower('RIshi');
              select lower('SOMESh');
-- lcase              
 select lcase('sriNivas');
           select lcase('Amit');
            select lcase('SAgar');
             select lcase('RIshi');
              select lcase('SOMESh');
-- ucase/upper
              select ucase('srinivas');
           select upper('amit');
            select ucase('sagar');
             select upper('rishi');
              select upper('somesh');
-- ascii             
      select ascii('A');
       select ascii('B');
        select ascii('a');
         select ascii('b');
          select ascii('14');
 -- char
 select char(95);
       select char(65);
        
-- concat
      select concat('hello','guys');
      select length(concat('hello','guys'));
      select ascii(concat('hello','guys'));
      select substr(concat('hello','guys'),3,5);
-- replace 
      select replace('helloguys','hello','jlc');
      select replace('helloguys','hello','psk');
      select replace('helloguys','hello','codenxt');
      select replace('helloguys','hello','tap');
      select replace('helloguys','hello','qspider');
	
-- date function     
     -- sysdate()
     select sysdate();
     select getdate(); 
         -- getdate does not exit
              select now();
              -- current date and time
      select date (now());         
                  select time (sysdate());         
     select time (now());
             select day (now());  
                    select month (now());  
                     select month (sysdate());  
             select year (sysdate());  
      select year (now()); 
 -- date format 
          select date_format(sysdate(),'%D %M %Y');
             select date_format(sysdate(),'%d %m %y');
                    select date_format(sysdate(),'%d -%m- %y'); 
                    select date_format(sysdate(),'%D -%M- %Y');
              select date_format(sysdate(),'%W %D -%M- %Y');      
           select date_format(sysdate(),'%a %D %M %Y');   
          select date_format(sysdate(),' %d %b %y');   
             select time_format(sysdate(),'%r');   
                 select time_format(sysdate(),'%T');   
               