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

#2nd task change the phone number datatype
alter table customers modify Phone bigint;


#3rd task Delete the table alter Account Branchges
drop table Account_branches;

select * from Customers;

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
set sql_safe_updates=0;
update Customers set FirstName ="Shruti"
where CustomerID = 102;

set sql_safe_updates=0;
update Customers set LastName = "Atagre", email="shruti@gmail", Phone=3950738290, AccountCreationDate="2026-09-23", Date_of_birth="2004-05-24"where CustomerID = 102;

Update Customers set FirstName="Pranali", LastName="Wagh", email="pranali@gmail", Phone=8302782559,AccountCreationDate="2026-04-01", Date_of_birth="2005-02-04" where CustomerID = 103;


use banckingDb;

# multipal update and with the help of case
 
 #update customers set phone =case
 
select *  from account ;
# insert into function 
insert into account values
(201,"saving", 26000, 101);
Alter table Account add CustomerID int unique not null;

select * from Customers;

update customers set email ="hima@gmail" where customerID = (101);

delete from customers where customerid = 101;




select * from customers;


select FirstName, LastName , Email,Phone from Customers;

Select * from account;

insert into account values
(202,"saving", 49000,102),
(203,"Current", 347389,103),
(204, "saving", 745683,104);

select * from account
where Account_type in ("saving");


select *from account
where Balance >=27000;

select * from Account
where balance between 27000 and 700000;


Select * from account
where customerid in (102,103);



select * from Customers;
Select * from Customers
where firstName like 'p%';

select * from customers 
order by Firstname;

select * from account;

select * from account 
order by balance desc;









#Disting ----> ha repeate 

use banckingdb;
select * from account;
select distinct account_type from account;

select * from account 
order by balance desc limit 3;


select * from account 
order by balance desc limit 3 offset 2;













