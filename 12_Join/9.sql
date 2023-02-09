SELECT *
from customer c
         inner join salesman s
                    on s.salesman_id = c.salesman_id
where grade < 300
order by customer_id asc