SELECT ord_date, sum(purch_amt), sum(purch_amt) * .15
from orders
group by ord_date
order by ord_date;