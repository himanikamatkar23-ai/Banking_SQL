use hollywood;
Select * from movies;
Select sum(budget) from movies;
select count(*) from movies;
select sum(budget) from movies;
select avg(Profitability) as profit from movies;
select min(audiencescore) as lowest_score from movies;
select max(openprofit) from movies;






Select genre  from movies
group by genre;


















use banckingdb;
select * from customers;
select *, date_format(date_of_birth ,"%d-%m-%y") from customers;
select *, date_format(date_of_birth ,"%D-%M-%Y")  as date_form from customers;
select *, monthname(date_of_birth) from customers;
select *, year(date_of_birth) from customers;
select *, left(date_of_birth,2) from customers;
select *, dayname(date_of_birth) from customers;


# Datediffernce  between two days 
select *, datediff(accountcreationdate, date_of_birth) from customers;


#date_add with interval
select *, date_add(date_of_birth, interval 10 year) from customers;


#datesubstract  (date_sub)     
select *, date_sub(date_of_birth, interval 10 year) from customers;


# task 1
Select * from customers;

#2nd Task
Select *,upper(firstname) from customers;
Select *,lower(firstname) as 1st_name from customers;

# 3rd task
select *, length(Firstname) from customers;


#4rt Task
select  *, left(firstname,4) from customers;

#5th task
select *, concat(Firstname," ", lastname) as Name from customers;
 
 Select * from account;
 Select  round(12653.76) as round_value;
 
 select ceil(69.93) as ceiling_value;
 
 
 
 
 select * from customers;
 select curdate();
 select now();
select *, year(date_of_birth) from customers;
select * , month(date_of_birth), day(date_of_birth) from customers;


select *, datediff(curdate(), date_of_birth) from customers;

select * from account;
select sum(balance) from account;
select avg(balance) from account;
select max(balance),min(balance) from account;
select count(*) from account;

select Account_type, sum(balance) from account
group by Account_type;

select Account_type,sum(balance) from account
group by Account_type
having sum(balance) >26000;








# join 
use banckingdb;
select * from customers;


# 1 INNER JOIN
select * from customers c
inner join account a 
on c.customerid = a.customerid;


select a.customerid, firstname, a.accountid,balance from customers c
inner join account a 
on c.customerid = a.customerid;



# 2 outer join---> sub type
#               left join----> return all recorde from the left table and only matching records from the right table
#               Right join--->return all recorde 
#               full join---->

#left join
select * from customers c
left join account a 
on c.customerid = a.customerid;


#right join
select * from customers c
right join account a 
on c.customerid = a.customerid;


#  full join ---->with the help of union we join the both table  
select * from customers c
left join account a 
on c.customerid = a.customerid
union
select * from customers c
right join account a 
on c.customerid = a.customerid;



# 3 cross join(carteian join)---->combain every row from one table with every row from another table (no need to comman column)
select * from customers
cross join account;

# 4 self join--->when we use we can written "join" only . joing a table its self (its use in only one table)
use  college;
select *  from student;
#insert into Student (student_id, student_name, age, email,course, phone) values;



# 5  natural join --> combain row from two tables based on column with the same name, data type and matching values

#syntax----> select * from table_name1 NATURAL JION TABLE_NAME2
use banckingdb;
SELECT * from customers
natural join account;


# transaction

select* from transactions;
alter table transactions add accountid int;
# insert into transactions
insert into transactions values
(301,"2015-05-10",20000,"Deposit",201),
(302,"2015-05-11",10000,"Withdrawl", 202),
(303,"2025-05-12",3000,"Deposit",203),
(304,"2015-05-13",50000,"withdrawk",204);


select * from account;
select * from Transactions;


select a.accountid,a.account_type, a.balance, t.transactionid,t.amount, t.transaction_type from account as a
inner join transactions as t
on a.accountid = t.accountid;

select * from account as a
left join transactions t
on a.accountid = t.accountid;



select a.balance, t.amount from account as a
inner join transactions as t
on a.accountid=t.accountid
where a.balance>40000
order by a.balance desc;

select * from account as a
inner join transactions as t
on a.accountid=t.accountid
where  transaction_type ="deposit";

