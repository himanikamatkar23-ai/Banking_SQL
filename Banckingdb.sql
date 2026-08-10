# create Database
create database banckingdb;
Use	banckingdb;

CREATE TABLE Customers
(
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone int
);
select * from customers;

use Banckingdb;
# add a column (AccountCreationDate)
Alter table customers add column AccountCreationDate date;
select * From customers;


# 2nd table create
use banckingdb;
create table  account(
Accountid int,
Account_type varchar (20),
Balance decimal (10,2)
);



#3rd table create
create table Transactions(
TransactionID int,
Transaction_Date date,
Amount decimal(10,2),
Transaction_type varchar(20)
);


#4th table Branches
create table Branches(
BranchID int,
Branch_name varchar(100),
Branch_address varchar(200),
branch_phone varchar(15)
);


#5 table  AccountBranches
create table Account_Branches(
Assignment_Date date
);

# 6th table create Loan table
create table Loans(
Loan_ID int,
Loan_Amount decimal(10,2),
Interest_rate decimal(10,2),
Start_date date,
End_date Date
);

# 1st task add colunm DOB in customers

alter table customers add  Date_of_birth date;

#2nd task 


#3rd task Delete the table alter Account Brancges
drop table Account_branches;



#add on ID  Primary key
use banckingd;
alter table customers modify CustomerID int primary key;
alter table account modify Accountid int primary key;
alter table branches modify BranchID int primary key;
Alter table loans modify Loan_ID int primary key;
alter table transactions modify TransactionID int primary key;



# DML
# insert
insert into customers (CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, Date_of_birth) Values
(103,"Himani", "Kamatkar","himani@gmail", 4472849261, "2026-4-9", "2000-9-19");
select * FROM Customers;


#UPDATE
set sql_safe_updates=0
Update customers set FirstName= "Shruti" Where CustomerID (102);






