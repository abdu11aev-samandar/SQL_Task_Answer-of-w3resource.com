SELECT o.ord_no, c.cust_name
from orders o,
     customer c
where o.customer_id = c.customer_id
order by ord_no;