use bharath;

create table new_branch(
branch_id int primary key auto_increment,
br_name varchar(300) not null,
addr varchar(200));

drop table new_branch;

create table new_employee(
emp_id int primary key auto_increment,
emname varchar(30) not null,
job_desc varchar(30),
salary int,
branch_id int,
constraint fr_branchid foreign key(branch_id) references new_branch(branch_id) 
ON DELETE CASCADE 
);
/* WE CAN USE ON (SET NULL) OR  ON (CASCADE) TO DELETE IN 
                   FOREIGN KEY*/


drop table new_employee;

INSERT INTO  new_branch values(1,"Chennai","16 ABC Road");
INSERT INTO  new_branch values(2,"Coimbatore","120 15th Block");
INSERT INTO   new_branch values(3,"Mumbai","25 XYZ road");
INSERT INTO   new_branch values(4,"Hyderabad","32 10th Street");


insert into new_employee values(1,'Ram','ADMIN',1000000,2);
insert into new_employee values(2,'Harini','MANAGER',2500000,2);
insert into new_employee values(3,'george','SALES',2000000,1);
insert into new_employee values(4,'ramya','SALES',1300000,2);
insert into new_employee values(5,'Meena','HR',2000000,3);
insert into new_employee values(6,'Ashok','MANAGER',3000000,1);
insert into new_employee values(7,'Abdul','HR',2000000,1);
insert into new_employee values(8,'Ramya','ENGINEER',1000000,2);
insert into new_employee values(9,'Raghu','CEO',8000000,3);
insert into new_employee values(10,'Arvind','MANAGER',2800000,1);
insert into new_employee values(11,'Akshay','ENGINEER',1000000,1);
insert into new_employee values(12,'John','ADMIN',2200000,1);
insert into new_employee values(13,'Abinaya','ENGINEER',2100000,2);
insert into new_employee values(14,'Vidya','ADMIN',2200000,NULL);
insert into new_employee values(15,'Ranjani','ENGINEER',2100000,NULL);



select * from new_employee;

select  * from new_branch ;

/* now if we have to delete some 
 column on the new_branch table we have to use "SET NULL -- WILL DELETE ONLY THE ID" OR
 "CASCADE --- WILL DELETE THE ENTIRE ROW OF THE RESPECTIVE ID"
 BUT WE HAVE TO RECREATE ALL THE TABLE*/

delete from new_branch
where branch_id=2;















