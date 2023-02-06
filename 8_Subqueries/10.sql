SELECT *
from customer c,
     orders o
where o.ord_date = '2012-08-17'
  and c.customer_id = o.customer_id