# Write your MySQL query statement below
SELECT d.name as Department ,e.name as Employee ,salary as Salary 
from department d
join (SELECT *,
       DENSE_RANK() OVER (
           PARTITION BY departmentId
           ORDER BY salary DESC
       ) AS rnk
       from Employee )e
on e.departmentID=d.id
where e.rnk<=3