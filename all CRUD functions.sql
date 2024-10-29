
/* where amd orderby clauses*/
Use bharath;

create table employee(
  emp_id int primary key,
  
  emname varchar(30),
  
  job_desc varchar(20),
  
  salary int
);

INSERT INTO employee VALUES(1,'Ram','ADMIN',1000000);
INSERT INTO employee VALUES(2,'Harini','MANAGER',2500000);
INSERT INTO employee VALUES(3,'George','SALES',2000000);
INSERT INTO employee VALUES(4,'Ramya','SALES',1300000);
INSERT INTO employee VALUES(5,'Meena','HR',2000000);
INSERT INTO employee VALUES(6,'Ashok','MANAGER',3000000);
INSERT INTO employee VALUES(7,'Abdul','HR',2000000);
INSERT INTO employee VALUES(8,'Ramya','ENGINEER',1000000);
INSERT INTO employee VALUES(9,'Raghu','CEO',8000000);
INSERT INTO employee VALUES(10,'Arvind','MANAGER',2800000);
INSERT INTO employee VALUES(11,'Akshay','ENGINEER',1000000);
INSERT INTO employee VALUES(12,'John','ADMIN',2200000);
INSERT INTO employee VALUES(13,'Abinaya','ENGINEER',2100000);


select * from employee;

select emp_id,emname from employee

where emname<>"ramya";


select * from employee
where salary>2000000;

select * from employee
where salary>=2000000;

select * from employee
where salary<=2000000;

select * from employee
where salary>2000000 and job_desc="manager";

select * from employee
where job_desc="sales" or  job_desc="hr";

select * from employee
where job_desc IN("hr","sales","manager");

select * from employee
where job_desc NOT IN("hr","CEO","manager");

select * from employee
WHERE salary between 2000000 and 3000000 limit 5;

--- LIKE
---- WILDCARDS %(ZERO OR MORE CHARACTERS)  _ _(ONE CHARACTER)

SELECT * FROM EMPLOYEE
where emname like 'a%';
 
SELECT * FROM EMPLOYEE
where emname like '%a';

SELECT * FROM EMPLOYEE
where emname like 'a%a';

SELECT * FROM EMPLOYEE
where emname like '%i';

SELECT * FROM EMPLOYEE
where emname like '%i';

SELECT * FROM EMPLOYEE
where emname like '%d';

SELECT * FROM EMPLOYEE
where emname like'___i%' ;

SELECT * FROM EMPLOYEE
where emname like '__i%';

/* TO SELECT THE ACTUAL PERCENTAGE WE HAVE TO USE 
   1,TO EXECUTE RUN PRESS CTRL+ENTER IN SQL \*/

SELECT * FROM EMPLOYEE
where emname like '\%';

UPDATE employee
SET job_desc="ANALYST";

SELECT * FROM EMPLOYEE;

UPDATE employee
SET job_desc="ANALYST"

where job_desc="ENGINEER";

SET SQL_SAFE_UPDATES = 0;

delete from employee
where emp_id=12;

select emp_id=12 from employee;

insert into  employee(emp_id) values(12);



insert into  employee(emp_id,emname,job_desc,salary) values(12,"Athulya","Chef",3000000);

/* we can use distinct clause only with select*/
select distinct job_desc
from employee;

/* order by [we can select the increasing and decreasing values] */
select * from employee
order by emname;

select * from employee
order by salary,ename desc;

/* default is the ascending order */


select * from employee
order by salary,emname desc;

select * from employee
where job_desc="manager"
order by salary;

/* to customize our order to our needs key words[ case when then else] end */

select * from employee
order by (case job_desc
when 'ceo' then 1
when 'manager' then 2
when 'hr' then 3
when 'analyst' then 4
when 'sales' then 5
else 100 end 
),emname;














