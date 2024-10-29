create table Master_Table(
Customer_Id bigint NOT NULL,
Customer_Name varchar(255)NOT NULL,
Age bigint CHECK(Age>17)NOT NULL,
Mobile varchar(255)UNIQUE,
Country varchar(100)default'India')
