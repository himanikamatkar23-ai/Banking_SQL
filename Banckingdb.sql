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