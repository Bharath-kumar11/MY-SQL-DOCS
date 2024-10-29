 /*date*/
 
 use bharath;
   alter table employee add column hire_date date ;
   
   select * from employee;
    update employee
    set hire_date = "2018-07-17";
    
    SET SQL_SAFE_UPDATES = 0;
    update employee
    set hire_date = "2017-08-17"
    where job_desc="analyst";
    
     update employee
    set hire_date = "2016-08-27"
    where job_desc="chef";
    
    update employee
    set hire_date = "2016-08-27"
    where emname="harini";
    
    /* to set or check correct date and time we have to use now() clause */
    select now();
    
    select date(now());
    
    select curdate();
    /* to change the default date and time format we have to use date_format clause */
    
    select date_format(curdate(),"%d/%m/%y") as date;
    
    /* to change the name of the heading of the row use as clause or it may work without it as well*/
    
SELECT DATEDIFF(CURDATE(),'2020-01-01') DAYS; -- to calculate date difference

 SELECT CURDATE() 'start date',
 
 DATE_ADD(CURDATE(),INTERVAL 1 DAY) 'one day later',
 DATE_ADD(CURDATE(),INTERVAL 1 WEEK) 'one week later',
 DATE_ADD(CURDATE(),INTERVAL 1 MONTH) 'one month later',
 DATE_ADD(CURDATE(),INTERVAL 1 YEAR) 'one year later';
 
 select datediff('2012-10-10',curdate()) as days;
 
 select date_add(curdate(),interval 1 day) as 'after one day';
  select date_add(curdate(),interval 1 week) as 'after one week';
  select date_add(curdate(),interval 1 year) as 'after one year';
  select date_add(curdate(),interval 2 month) as 'after two month';
  
  
 
 

    
    
    