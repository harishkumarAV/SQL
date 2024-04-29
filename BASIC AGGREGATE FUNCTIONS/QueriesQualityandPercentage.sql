# Write your MySQL query statement below
select query_name ,
        round(avg(rating/position),2) as quality ,
        round(100*avg(CASE WHEN rating < 3 THEN 1 ELSE 0 END), 2)  as poor_query_percentage
from Queries
where query_name is not null
group by query_name; 