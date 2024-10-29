use bharath ;


select * from employee
order by job_desc;

select job_desc, avg(salary)
from employee
group by job_desc;

select job_desc, count(emp_id) count
from employee
group by job_desc;


select job_desc,emname
from employee
group by job_desc;

/* group by will be meaningful only if we combine and use with aggregate functions() */

select job_desc, count(emp_id) count
from employee
group by job_desc
having count(emp_id)>1;

select job_desc, count(emp_id) as count
from employee
group by job_desc
having count(emp_id)>=1;

---- where filters rows
---- having filters groups

/* note: order by always has to be in the last while writing a query */

select job_desc, count(emp_id) as count
from employee
where salary>1500000
group by job_desc
having count(emp_id)>1
order by job_desc;






