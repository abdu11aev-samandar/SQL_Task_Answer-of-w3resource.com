SELECT *
from orders o
where purch_amt > (SELECT avg(purch_amt)
                   from orders c
                   where o.customer_id = c.customer_id)