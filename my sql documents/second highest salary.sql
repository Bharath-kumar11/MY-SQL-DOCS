select * from Country_table
select * from State_Table
select * from District_table
/where clause/
/*
distinct() - duplicate values avoid 
as - alias name 
*/

select distinct(Country_Name) as Country from Country_Table

select distinct(Country_Code) as Code from Country_Table where Country_Name='INDIA'

select distinct(State_Name) as State from State_Table where Country_Code=1 and State_Code=100

select distinct(District_Name) as District from District_Table where State_Code=100 and District_Code=10
/Aggregate function  - only we need number columns/
select min(salary)as salary from Customers
select max(salary)as salary from Customers
select count(salary)as salary from Customers
select sum(salary)as salary from Customers
select avg(salary)as salary from Customers

/Find the highest salary in the table/

/*subquery / nested query */

select * from Customers where salary=(select max(salary)as salary from Customers)

/Find the Lowest salary in the table/

select * from Customers where salary=(select min(salary)as salary from Customers)


/Find the second highest salary in the table/

select * from Customers where salary =(
select max(salary) from Customers where salary <
(select max(salary) from Customers))


/Find the Third highest salary in the table/

select * from Customers where salary = (
select max(salary) from Customers where salary < 
(select max(salary) from Customers where salary < 
(select max(salary) from Customers)))

/top()/
select top(2) * from Customers