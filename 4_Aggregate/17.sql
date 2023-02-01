SELECT salesman_id, max(purch_amt) as Max
from orders
where salesman_id between 5003 and 5008
group by salesman_id
order by Max asc;