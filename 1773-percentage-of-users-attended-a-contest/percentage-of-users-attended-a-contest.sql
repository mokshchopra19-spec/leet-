# Write your MySQL query statement below
Select r.contest_id,
  Round(
        count(distinct r.user_id)*100/(SELECT COUNT(*) FROM Users)
    ,2) percentage
from Register r
group by r.contest_id
order by percentage desc,r.contest_id asc