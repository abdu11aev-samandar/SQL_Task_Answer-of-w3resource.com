SELECT *
form orders
where purch_amt >(
SELECT avg(purch_amt)
from orders
where ord_date='10/10/2012'
)