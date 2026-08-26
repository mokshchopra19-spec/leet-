# Write your MySQL query statement below
select id,sum(num) num 
from
((SELECT requester_id as id,count(accepter_id) as num
from RequestAccepted
group by requester_id)
union all
(SELECT accepter_id as id,count(requester_id) as num
from RequestAccepted
group by accepter_id))t
group by id
order by num desc limit 1 