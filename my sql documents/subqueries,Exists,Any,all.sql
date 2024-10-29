use bharath;

select * from branch_join;
select * from employee_join;


select * from employee_join
where branch_id=(select branch_id from branch_join
where br_name="Chennai");


-- employees with min salary
select * from employee_join 
where salary =(select max(salary) from employee_join);

select * from employee_join where salary =(
select max(salary) from employee_join where salary <
(select max(salary) from employee_join));

select * from employee_join where salary = (
select max(salary) from employee_join where salary < 
(select max(salary) from employee_join where salary < 
(select max(salary) from employee_join)));



---- exists used with subquery
---- branch_join containing atleast one admin should be in the result;

select branch_id,br_name
from branch_join
where exists(
select * from employee_join
where job_desc="Admin" and branch_join.branch_id = employee_join.branch_id
);

select * from employee_join
where job_desc="admin";


-- any query
-- branch info in which any employee gets more than 25l

select * from branch_join
where branch_id = any(
select branch_id from employee_join
where salary>2500000);

-- All
-- employees  not working in chennai or coimbatore
select * from employee_join 
where branch_id <> all(
select branch_id from branch_join
where  br_name in ("Chennai","Coimbatore")
);






