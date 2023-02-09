SELECT *
from ((orders o
    inner join customer c
       on o.customer_id = c.customer_id)
    inner join salesman s
      on o.salesman_id = s.salesman_id)
