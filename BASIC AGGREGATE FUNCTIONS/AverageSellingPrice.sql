# Write your MySQL query statement below
select p.product_id, IFNULL(round(sum(p.price * u.units) / sum(u.units),2),0) as average_price
from  Prices p
left join UnitsSold u 
on p.product_id = u.product_id AND
u.purchase_date BETWEEN p.start_date and p.end_date
group by p.product_id;
