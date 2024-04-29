# Write your MySQL query statement below
select id , movie , description, rating from cinema where id%2 =1 && description!='boring'
order by rating desc;


the aggregate function that could be used here is mod().
  
SELECT * FROM Cinema
WHERE mod(id,2) = 1 
    AND description != 'boring'
ORDER BY rating DESC;
