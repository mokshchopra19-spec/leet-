# Write your MySQL query statement below
delete from Person
where id in (SELECT id FROM(
    SELECT id, ROW_NUMBER() over(partition by email
    order by id )rn from Person
    )t
    where rn>1
    )