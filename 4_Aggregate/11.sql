SELECT salesman_id, max(purch_amt) as Max
from orders
where ord_date = '2012-08-17'
group by salesman_id;