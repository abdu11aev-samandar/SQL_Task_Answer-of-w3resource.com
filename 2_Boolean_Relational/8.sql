SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id
from orders
where purch_amt < 200
   or ord_date >= '2012-02-10'
    and customer_id < 3009;