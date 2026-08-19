# Write your MySQL query statement below
select Round(
    sum(case when order_date = customer_pref_delivery_date then 1 else 0 end)*100/count(*)
,2)immediate_percentage
from Delivery 
where (customer_id,order_date) in 
(select customer_id,MIN(order_date)from delivery
group by customer_id)