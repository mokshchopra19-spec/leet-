# Write your MySQL query statement below
select query_name ,
Round (avg(rating/position)
   ,2)quality,
  Round(
        sum(case when rating<3 then 1 else 0 END)*100/count(*)
           ,2)poor_query_percentage
from Queries
group by query_name