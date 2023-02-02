SELECT customer_id, count(customer_id), max(purch_amt)
from orders
group by customer_id
order by count desc;