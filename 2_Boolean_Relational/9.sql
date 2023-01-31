SELECT *
from orders
where ord_date = '2012-08-17'
   or customer_id > 3005
    and purch_amt < 1000;