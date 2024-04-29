# Write your MySQL query statement below
select p.project_id , IFNULL(round(avg(e.experience_years) , 2),0) as average_years
from Project p 
Left join Employee e
on p.employee_id = e.employee_id
group by p.project_id;
