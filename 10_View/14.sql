create or replace view dateord as
SELECT ord_date, count(ord_no)
from orders
group by ord_date
order by count desc