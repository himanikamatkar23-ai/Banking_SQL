# create Database
create database banckingdb;
Use	banckingdb;

CREATE TABLE Customers
(
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone int,
);
select * from customers;

use Banckingdb;
# add a column (AccountCreationDate)
Alter table customers add column AccountCreationDate date;
select * From customers;










