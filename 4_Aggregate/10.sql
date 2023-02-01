SELECT customer_id, ord_date, max(purch_amt) as Max
from orders
group by customer_id, ord_date;