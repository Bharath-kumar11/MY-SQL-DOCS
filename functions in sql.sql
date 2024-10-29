use bharath;
 select * from employee;
 
 select count(*) total
 from employee;
 
 select count(*) no_of_managers
 from employee
 where job_desc = "manager";
 
 select avg(salary)
 from employee
 where job_desc = "manager";
 
 select sum(salary)
 from employee
 where job_desc = "chef";
 
select max(salary)
 from employee;
 select min(salary)
 from employee;
 
 /* find the second highest salary in the table */
 
 select  * from employee
 where salary = (
 select max(salary)<(select max(salary) from employee));
 
 /* not working */
 
   ----- string
   
   select  ucase(emname)Name,salary   /*----- alias name */
   from  employee;
   
   
   /* counting the character length or no of letters in the word */
   
   select emname,char_length(emname) char_count
   from employee;
   
   select emname,concat('RS.',format(salary,0)) 
   from employee;
   
   
   select left (emname,3) 
   from employee;
     select emname,left(job_desc,3) 
   from employee;
   
   
  
    
    
    

   
   
 
 