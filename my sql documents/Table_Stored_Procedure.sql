CREATE TABLE [dbo].[Customer]
(
[CustomerID] [int] NOT NULL Primary key,
[Name] [varchar](100) NULL,
[Address] [varchar](300) NULL,
[Mobileno] [varchar](15) NULL,
[Birthdate] [datetime] NULL,
[EmailID] [varchar](300) NULL
)

CREATE PROCEDURE Usp_InsertUpdateDelete_Customer

@CustomerID BIGINT = 0

,@Name NVARCHAR(100) = NULL

,@Mobileno NVARCHAR(15) = NULL

,@Address NVARCHAR(300) = 0

,@Birthdate DATETIME = NULL

,@EmailID NVARCHAR(15) = NULL

,@Query INT

AS

BEGIN

IF (@Query = 1)

BEGIN

INSERT INTO Customer(

NAME

,Address

,Mobileno

,Birthdate

,EmailID

)

VALUES (

@Name

,@Address

,@Mobileno

,@Birthdate

,@EmailID

)

 

IF (@@ROWCOUNT > 0)

BEGIN

SELECT 'Insert'

END

END

 

IF (@Query = 2)

BEGIN

UPDATE Customer

SET NAME = @Name

,Address = @Address

,Mobileno = @Mobileno

,Birthdate = @Birthdate

,EmailID = @EmailID

WHERE Customer.CustomerID = @CustomerID

 

SELECT 'Update'

END

 

IF (@Query = 3)

BEGIN

DELETE

FROM Customer

WHERE Customer.CustomerID = @CustomerID

 

SELECT 'Deleted'

END

 

IF (@Query = 4)

BEGIN

SELECT *

FROM Customer

END

END

 

IF (@Query = 5)

BEGIN

SELECT *

FROM Customer

WHERE Customer.CustomerID = @CustomerID

END