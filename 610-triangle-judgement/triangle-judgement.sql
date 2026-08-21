# Write your MySQL query statement below
select x,y,z, (
    CASE when x+y>z and z+x>y and z+y>x then 'Yes'
    else 'No'
    END
    )triangle
from Triangle
