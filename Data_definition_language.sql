/** CREATE STATEMENTS **/

CREATE DATABASE TestDB;

USE TestDB

/** CREATE TABLE **/

--CREATE TABLE TableName
--(
--		Column1 DataType,
--		Column2 DataType

--)

CREATE TABLE Product
(
		ProductID int,
		ProductName varchar(50),
		ProductNumber varchar(50),
		ProductDesctiption varchar(150),
		New_Used_Flag int
);

CREATE TABLE Customer
(
		CustomerID int,
		FirstName varchar(50),
		MiddleName varchar(50),
		LastName varchar (50),
		PhoneNumber int
);

/** Create Schema for our Table**/

CREATE SCHEMA staging;

/** ALTER**/
/**Adding a Column to an existing table**/
Alter Table [dbo].[Customer]
Add EmailAddress varchar(100)

/**Changing an existing column**/
Alter Table [dbo].[Customer]
Alter Column PhoneNumber varchar(50)

/**Removing an existing column**/

Alter Table Customer
Drop Column MiddleName

/** Move Tables on Schema**/

Alter Schema staging transfer dbo.Customer

/** Drop STATMENTS **/

Drop Table Product
Drop Schema staging
Alter Schema dbo transfer staging.Customer /** Becuase we connected schema to DBO we must first remove schema and then we can Drop Table **/
Drop Table Customer