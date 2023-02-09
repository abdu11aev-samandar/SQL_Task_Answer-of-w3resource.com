SELECT c.cust_name,
       c.city,
       c.grade,
       s.name,
       s.city
from customer c
         left join salesman s
                   on c.salesman_id = s.salesman_id
order by customer_id asc