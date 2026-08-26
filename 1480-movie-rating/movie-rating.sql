# Write your MySQL query statement below
(select name as results 
from Users u
join MovieRating m
on u.user_id=m.user_id
group by u.user_id,name
ORDER BY count(movie_id) DESC, name ASC
limit 1)
UNION ALL
(select title as results
from Movies p
join MovieRating i
on p.movie_id=i.movie_id
where month(created_at)=2 and year(created_at)=2020
group by p.movie_id
order by avg(rating)desc,title asc
limit 1)