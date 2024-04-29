# Write your MySQL query statement below


select user_id , ifnull(round(sum(action = "confirmed") / count(*) , 2) , 0.00) as confirmation_rate
from signups left join confirmations using(user_id)
group by user_id;



// Explanation  for ifnull() statement:

// Syntax
// IFNULL(expression, alt_value)

// expression:	  Required. The expression to test whether is NULL
  
// alt_value:	  Required. The value to return if expression is NULL
