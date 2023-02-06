SELECT *
from orders
where purch_amt > any (SELECT purch_amt
                       from orders
                       where ord_date = '2012-09-10')