use bharath;

/* union can be used if both table has same type of data */

-- create a client table similar to branch table

create table clients (
client_id int primary key auto_increment,
location varchar(30)not null,
addr varchar(300));

create table branch_join(
branch_id int primary key auto_increment,
br_name varchar(300) not null,
addr varchar(200));


drop table clients;

insert into clients values(1,"Newyork","25 10th Block"); 
insert into clients values(2,"Coimbatore","120 15th Block"); 
insert into clients values(3,"London","21 ABC Road"); 

select * from branch_join;
select * from clients;
select * from branch_join
union all
select * from clients;

-- unions all the data even it has a duplicate value in it


select * from branch_join;
select * from clients;
select * from branch_join
union 
select * from clients;

-- merges all the  data in the table without a duplicate entry or value
