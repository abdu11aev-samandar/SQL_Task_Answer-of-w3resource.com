SELECT salesman_id, ord_date, max(purch_amt) as Max
from orders
group by salesman_id, ord_date
order by salesman_id, ord_date asc;