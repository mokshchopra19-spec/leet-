# Write your MySQL query statement below
select person_name
from(select turn,person_name,sum(weight)over(order by turn)runt from Queue )t
where runt<=1000
order by turn desc
limit 1