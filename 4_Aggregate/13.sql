SELECT customer_id, ord_date, max(purch_amt)
from orders
where purch_amt between 2000 and 6000
group by customer_id, ord_date;