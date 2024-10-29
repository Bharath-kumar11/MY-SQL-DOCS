

use Arun

select * from c_table

select * from student_Details_table

insert into c_table values(4,'Durai',35,'Trichy')

insert into c_table(Customer_Id,Customer_Name,Age,Address)values(3,'Deva',34,'Chennai')

--Using SELECT Query in INSERT INTO 

--1)Copy specific rows from a table
    insert into sam_table select * from c_table where age=23
--2)Insert all columns of a table
   insert into sam_table select * from c_table
--3)Inserting specific columns of a table
     insert into sam_table(sam_Id,sam_age) select customer_id,age from c_table where age=23
  
select * from c_table order by customer_name asc
select * from c_table order by customer_name desc

select * from c_table order by age,customer_name asc
delete from sam_table

/*alias name - as*/
select c.customer_id as Id,s.sam_Id as Id from c_table as c,sam_table as s

/*like operator*/
select * from c_table where customer_name like '%a%'

/* operator 
>
<
>=
<=
<>
=

and
or
not

*/

/* 
Aggregate functions
min()
max()
count()
sum()
avg()
 */

 select count(customer_name) from c_table
 select min(age) as Minimum_Age from c_table
 select max(age) as Max_Age from c_table
 select sum(age) as Total from c_table
 select avg(age) as Average from c_table
