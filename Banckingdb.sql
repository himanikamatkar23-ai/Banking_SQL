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


# 1 INNER JOIN---> join a two or more table with the help of comman column
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



# subquery---> is a  query which are placed in another query
#outer query(main query) --->
#inner query  (sub-query)---->
##########  in term of exicution ---> sub-query run first
## correlated
# neastedif both of type


#types
# 1 . single row query

select * from account;
select *,(select avg(balance) as avg_bal from account) from account; 


# mmultiple row  query
select *,(select avg(balance) as avg_bal from account),
(select max(balance) as avg_bal from account),
(select min(balance) as avg_bal from account) from account;


#sub query with where
select * from account 
where balance > (select avg(balance) from account);


use hollywood;
select * from movies;
select * from movies
where audiencescore>80 or
genre in (select avg(profitability) from movies where genre in("action","comedy"));

# task 1
use banckingdb;
select * from transactions;
select avg(amount) from transactions;
Select * from transactions
where amount>(select avg(amount) from transactions);

#task 2
Select * from account;
select avg(balance) from account ;
Select * from account
where Balance>(select avg(balance) from account);

# task 3
select * from transactions
where transaction_type in
(select transaction_type from transactions where transaction_type in ("deposit"));

#task 4 
select * from account;
select * from account
where balance in (select max(balance) from account );



#@# windosws function type ---> performimg a calculation(is a calculation performed across a set of table rows related to the current row, returning a value for each row without collapsing them into a single summary result like standard aggregate functions.)
# 1 . aggregation wf
# 2 . ranking wf----> 3 types                                                               ex->   %    rank    Dence_rank   Rows_number
				      #1 rank(assing a rank, with a gap of equal values),                         100    1        1              1
                      #2 dense_rank (assing a rank, without a gap of equal value),                90     2        2              2
                      #3 row_number (assing a unique rank of all values)                          80     3        3              3
                      #                                                                           80     3        3              4
                      #                                                                           80     5        3              5
                      #                                                                           70     6        4              6
                      #                                                                           70     6        4              7
                      
			
# 3 . values wf---> lag (preivious one), lead(next one), first (fist and (desc last income shows)  (first---> first salary ) ) ,  last (current valeu), nth_value

select * from account;
select *,
sum(balance) over (partition by account_type) from account;

update account set balance =26000 where accountid =202;
Select * from account;

# Ranking WF
# 1.Rank
select *,
rank() over(order by balance desc)  from account;

#dence_rank
select *,
dense_rank() over(order by balance desc)  from account;

# row_number
select *,
row_number() over(partition by Account_type order by balance desc)  from account;

# values WF
#lag
select *,
lag(balance) over(partition by account_type order by balance desc)  from account ;

use banckingdb;
select * from loans;
alter table loans add customerid int;
insert into loans (loan_id,loan_amount,interest_rate,customerid) values
(301,100000,9.5,101),
(302,50000,8.00,102),
(303,150000,10,103),
(304,87000,7,104),
(305,30000,5,105);
insert into loans (loan_id,loan_amount,interest_rate,customerid) values
(306,100000,9.5,106);



#task 1
 select *,
 rank() over(order by loan_amount desc) as loan_amount from loans;


# task 2
select *,
 dense_rank() over (order by loan_amount desc)  from loans;

# task 3
select *,
 row_number() over (order by loan_amount desc)  from loans;
 
#task 4
select *,
 dense_rank() over (partition by customerid order by loan_amount desc)  from loans;
 
 
# task 5
select *,
sum(loan_amount) over (order by loan_amount) from loans;

#task 6
select Loan_id, loan_amount,customerid ,
lag(loan_amount) over(order by loan_amount) from loans;

select Loan_id, loan_amount,customerid ,
lead(loan_amount) over(order by loan_amount) from loans;




