SELECT o.ord_no, o.purch_amt, c.cust_name, c.city
from orders o,
     customer c
where purch_amt between 500 and 2000