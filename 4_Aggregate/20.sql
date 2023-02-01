SELECT ord_date, salesman_id, count(ord_no)
from orders
group by (ord_no)
order by salesman_id asc;