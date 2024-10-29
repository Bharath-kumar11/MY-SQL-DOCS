use bharath;
select * from employee_join;
select * from branch_join;

-- view
create or replace view emp_br
as
select employee_join.emp_id,employee_join.emname,
  employee_join.job_desc,branch_join.br_name
  from employee_join
  inner join branch_join
  on employee_join.branch_id=branch_join.branch_id;
  
  select * from emp_br
  where job_desc="manager";
  
   select * from employee_join
  where job_desc="manager";
  
  -- to drop the view we have to use drop clause 
  
  