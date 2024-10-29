USE BHARATH;

create table branch_join(
branch_id int primary key auto_increment,
br_name varchar(300) not null,
addr varchar(200));

drop table branch_join;

create table employee_join(
emp_id int primary key auto_increment,
emname varchar(30) not null,
job_desc varchar(30),
salary int,
branch_id int,
constraint fd_branchid foreign key(branch_id) references branch_join(branch_id) 
);

/*NOTE: NAME OF THE ID AND BRANCH IS VERY IMPORTANT OTHERWISE
 WE CANT UNDERSTAND WHATS THE ERROR IS.ALWAYS WRITE THE CORRECT REPRESENTATIONS
*/


INSERT INTO  branch_JOIN values(1,"Chennai","16 ABC Road");
INSERT INTO  branch_JOIN values(2,"Coimbatore","120 15th Block");
INSERT INTO  branch_JOIN values(3,"Mumbai","25 XYZ road");
INSERT INTO  branch_JOIN values(4,"Hyderabad","32 10th Street");


insert into employee_JOIN values(1,'Ram','ADMIN',1000000,2);
insert into employee_JOIN values(2,'Harini','MANAGER',2500000,2);
insert into employee_JOIN values(3,'george','SALES',2000000,1);
insert into employee_JOIN values(4,'ramya','SALES',1300000,2);
insert into employee_JOIN values(5,'Meena','HR',2000000,3);
insert into employee_JOIN values(6,'Ashok','MANAGER',3000000,1);
insert into employee_JOIN values(7,'Abdul','HR',2000000,1);
insert into employee_JOIN values(8,'Ramya','ENGINEER',1000000,2);
insert into employee_JOIN values(9,'Raghu','CEO',8000000,3);
insert into employee_JOIN values(10,'Arvind','MANAGER',2800000,1);
insert into employee_JOIN values(11,'Akshay','ENGINEER',1000000,1);
insert into employee_JOIN values(12,'John','ADMIN',2200000,1);
insert into employee_JOIN values(13,'Abinaya','ENGINEER',2100000,2);
insert into employee_JOIN values(14,'Vidya','ADMIN',2200000,NULL);
insert into employee_JOIN values(15,'Ranjani','ENGINEER',2100000,NULL);


select * from employee_join;

select  * from branch_join;


select employee_join.emp_id,employee_join.emname,
  employee_join.job_desc,branch_join.br_name
  from employee_join
  inner join branch_join
  on employee_join.branch_id=branch_join.branch_id;
  
  select employee_join.emp_id,employee_join.emname,
  employee_join.job_desc,branch_join.br_name
  from employee_join
  cross join branch_join;

--- br_name emp_count

select b.br_name, count(e.emp_id) no_of_emplyoees
from branch_join as b
join employee_join as e
on b.branch_id = e.branch_id
group by  e.branch_id;
























