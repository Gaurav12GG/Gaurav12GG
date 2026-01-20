CREATE TABLE windows (new_id int(20),new_data char(20 ));
insert into windows values (20, 'gaurav'),
                            (70, 'gaurav'),
                            (80, 'saurav'),
                            (30, 'aaurav'),
                            (70, 'aaurav'),
                            (20,'saurav');
                            
    select new_id,new_data ,
   min(new_id) over (PARTITION by new_data order by new_id)AS "MIN"
    From  windows;
    --  same for average max min sum 
    
select new_id,new_data ,
min(new_id) over (order by new_id ROWS between unbounded preceding AND unbounded following)AS "MIN"
-- sum(new_id) over (order by new_id ROWS between unbounded preceding AND unbounded following)AS "sum",
-- count(new_id) over (order by new_id ROWS between unbounded preceding AND unbounded following)AS "count",
-- avg(new_id) over (order by new_id ROWS between unbounded preceding AND unbounded following)AS "avergae"
From  windows;
   --  here row preceding will show same value throughout the table 
 select new_id ,
 row_number()over(order by new_id) AS "Row number",
 rank()over(order by new_id)as "Rank",   -- this will skip the number if the value reapets it will assign him same value
 dense_rank()over(order by new_id) AS "dense rank",
 percent_rank()over(order by new_id) AS "Percent rank"
 from windows ;
    
    drop table windows
                            
                            