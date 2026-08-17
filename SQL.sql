create database Hollywood;
use hollywood;
select * from movies;

select * from movies where leadStudio ="Disney";
 # 2nd task 
 select * from movies where genre ="comedy";
 
 #3rd task
 select * from movies where year = 2010;
 
 
 
 
 
 
 
 use hollywood;
 select * from movies;
 
 # special 
 
 
 #in 
 select * from Movies
 where genre in ("Action","Triller","biography");
 
 
 
 # Not in 
 select * from movies
 where leadstudio not in ("Sony", "Disney");
 
 
 # between ----> range and we use "and"
select	 * from movies
where year between 2009 and 2012;


# is null ---> to check blank cell 
select * from movies 
where genre is null;



# is not null ---->fetch the column who is not null
select * from movies
where genre is not null;
 
 
 # like
 #like "a%"---> for sarting word
 #like "%a"---> form end word
select * from movies 
where movie like 'a%';

# like "%a"---> for end word

# Order by -clause (select the rang from A to z (or sorting) accending order is default(when we want minimum value) and descresing order (when we want high value))
# order by --> to use find the highest and lowest value 
select movie, audiencescore,genre from movies 
where genre in ('comedy')
order by audiencescore desc;

select * from movies;
select * from movies
where leadstudio ="disney" and budget>=100
order by Audiencescore desc;

#limit ---> like query is use in last always  
select * from movies
 order by AudienceScore desc limit 5;




#----Offset ---> in offset when we use this command this command remove the top valuse then calculate the value in limits
# scip the top value we written

select * from movies
order by audiencescore desc limit 7 offset 3;





#aggregarion function (sum, avg, max, min,count)
# when we use "AS" To change initial name of able
# when we use Aggegration Function- Count(*) ---> we can use "*"
#When we use group by Then [Table name ] --> this Table name we can written before aggegation
# order by use alway after Groupb
# Round ---> use for decimal point Remove or Add

use hollywood;
select * from Movies;

select Genre, Avg(AudienceScore) as Avg_Score From Movies
group by Genre;

select Genre,sum(Budget), Avg(AudienceScore) as Avg_Score From Movies
group by Genre;

select genre, count(*) from movies
group by genre;

select Year, Count(*) From Movies
group by Year;

select year,round(sum(Profitability),2) as profit From Movies
group by year
order by Profit ;


select genre,sum(Budget) from movies
group by genre
order by sum(Budget);

Select Story, round(avg(AudienceScore),2)as Score From Movies
group by Story
order by Score desc;

select * from Movies;

Select Leadstudio, round(sum(Profitability),2) as profit from movies
where genre="Action"
group by Leadstudio
order by profit desc;


select Year ,sum(Budget) From Movies
Where Genre in ('Action', 'Comedy')
Group by  Year
order by sum(Budget);


#task from lab
use banckingdb;

select * from customers
where FirstName like "p%";
select * from Customers
Where email like "%Email%";

select * from Customers
Where LastName like "%Kar";

Select * from Account 
Where Account_type in ("Saving");


select * from Customers
where Customerid in (2,3,5);


select * From Customers
order by LastName ;

Select * From Account
order by Balance desc
limit 2;


select * from Account
where Account_type in (Balance)
order by Balance desc;




