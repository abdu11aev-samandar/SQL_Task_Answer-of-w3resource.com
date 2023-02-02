SELECT *
from salesman s,
     customer c,
     orders o
where o.ord_date = '2012-10-05'
  and c.customer_id = o.customer_id
  and o.salesman_id = s.salesman_id;