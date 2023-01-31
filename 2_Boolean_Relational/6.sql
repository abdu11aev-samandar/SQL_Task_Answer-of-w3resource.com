SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id
from orders
where ord_date = '2012-09-10' and salesman_id > 5005
   or purch_amt > 1000;