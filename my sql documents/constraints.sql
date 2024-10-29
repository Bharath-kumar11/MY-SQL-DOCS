/*Constraints*/
use bharath;

create table employee2(

emp_id int primary key auto_increment,
emname varchar(30) not null,
job_desc varchar(30) default 'unassigned',
salary int,
pan varchar(30) unique,
check (salary>100000) );


describe employee2;

insert into employee2(emname,salary) values("ramya",100000);

select * from employee2;

insert into employee2(salary) values(200000);

insert into employee2(emname,salary) values("rayaa",1000);

insert into employee2(emname,salary) values("shreya",908);


create table employee3(

emp_id int primary key,
emname varchar(30),
job_desc varchar(30),
salary int );

alter table employee3 modify 
emname varchar(30)not null;

-- to drop a constraint
alter table employee3 modify 
emname varchar(30);

-- to add a set job description 
alter table employee3  
alter job_desc set default 'unassigned' ;

alter table employee3  
alter job_desc drop default ;

-- add check constraint

alter table employee3
add constraint chk_salary check (salary>100000);

-- drop check constraint 

alter table employee3
drop  constraint check chk_salary;












