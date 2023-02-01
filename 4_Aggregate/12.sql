SELECT customer_id, ord_date, max(purch_amt) as Max
from orders
where purch_amt > 2000
group by customer_id, ord_date;