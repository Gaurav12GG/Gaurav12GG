create database Student;
create table Lookup(age int(20) , name varchar(20), phone_no bigint(10),state char(20),Weight int(50),
 fee_paid int(10), Payment_date DATE);
select * from Lookup;
insert into Lookup values(27 ,'gaurav',9939440,'mumbai',45, 100,'2020-09-24'),
						(30,'gaurav',9909333,'bihar',44, 200, '2021-04-14'),
                        (29 ,'Brijesh',9936650,'mumbai',35, 400 , '2024-02-23'),
                         (49 ,'shri',8282892,'Haryana',83, 500, '2023-11-28'),
                         (69 ,'shri',8289739,'bhopal',50, 600, '2021-06-29');
alter table Lookup
add  column Roll_no int;
drop table Lookup;

update Lookup
set Roll_no =1
where state = 'mumbai';

update Lookup 
set name ='hari',age =39
where state =  'mumbai';

delete from lookup
where state = 'bihar';

truncate table lookup;

select*from lookup
where age >20 and state ='mumbai';

select age,name,state  from lookup
limit 3;

select age,name,state  from lookup
limit 3;

select age,name,state  from lookup
order by name desc ;


-- this are the some string functions to know 
select length (name), name  from lookup;
select substring(name, 1, 3), name from Lookup;
select concat(name,age) ,name age from lookup;
select replace(name,'gaurav','shweta'), name from lookup;
-- this substring will help to make subset of strings from 1 to 3-- 


-- this are the some aggregate function to know 
select count(name) from lookup;
select sum(age) from lookup;
select max(Weight) from lookup;
select  avg(age) from lookup;

-- this is basic query for group by and having by-- 
select state , count(*) AS total_people 
 from Lookup
group by state;
select state, group_concat(name) AS people_names
 from Lookup
group by state;

select name , count(*) AS people_names
from lookup
group by name ;

select  name ,  count(state)  AS total From lookup
group by  name  
having count(state) >= 1
order by total asc ;
-- this are the dew time functions-- 
-- show TIMEZONE;
select now();
select TIMEOFDAY();
select current_time();
select current_timestamp();
select extract( day from Payment_date )  AS Paid_day  FROM lookup;
select extract( week from Payment_date )  AS DOW  FROM lookup;
select extract(Year  from Payment_date )  AS DOY  FROM lookup;
select extract(month from Payment_date )  AS Paid_month  FROM lookup;



 set SQL_SAFE_UPDATES =0;