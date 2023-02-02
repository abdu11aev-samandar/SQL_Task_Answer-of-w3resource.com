SELECT ord_date, count(ord_date)
from orders
group by ord_date
order by count asc;