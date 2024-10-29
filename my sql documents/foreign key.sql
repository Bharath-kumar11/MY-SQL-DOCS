use bharath;

create table branch (
branch_id int primary key auto_increment,
br_name varchar(30) not null,
addr varchar(300) );

describe employee;

create table employee4(
emp_id int primary key auto_increment,
emname varchar(40) not null,
job_desc varchar(30),
salary int,
branch_id int,
constraint fk_branchid foreign key (branch_id) references branch(branch_id));

drop table employee4;

alter table employee4
drop foreign key fk_branchid ;

select * from employee4;

/*do some tasking to understand this*/

select * from employee4;


show index from employee;
 
