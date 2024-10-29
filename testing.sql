use bharath;

create table Master_Table(
Customer_Id bigint NOT NULL,
Customer_Name varchar(255)NOT NULL,
Mobile varchar(255)UNIQUE,
Country varchar(100)default'India'
);


describe master_table;

insert into master_table values (1,"anand",890,"india");
insert into master_table values(2,"bala",980,"india");
insert into master_table values(3,"arun",567,"india");

alter table master_table add department varchar(100);
alter table master_table drop department;

insert into master_table(department) values("mech","civil","science");


 
 insert into master_table (customer_id,customer_name) values(4,"viru");
 insert into master_table (department) value("mech");
 insert into master_table (customer_id,customer_name,department) values(4,"viru","mech");

select * from master_table;


