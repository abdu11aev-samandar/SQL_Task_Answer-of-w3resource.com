SELECT customer_id, max(purch_amt) as Max
from orders
group by (customer_id)
order by customer_id asc;