SELECT customer_id, ord_date, max(purch_amt)
from orders
where purch_amt in (2000, 3000, 5760, 6000)
group by customer_id, ord_date;