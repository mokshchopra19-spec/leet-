# Write your MySQL query statement below
select  max(Salary)  SecondHighestSalary 
from (select dense_rank() over (order by salary desc) as ranks,
salary 
from Employee)t
where ranks =2