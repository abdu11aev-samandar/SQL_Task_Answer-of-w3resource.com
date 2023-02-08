create or replace view sorder as
SELECT salesman_id, ord_no, customer_id
from orders
where ord_date = '2012-08-17'
   or ord_date = '2012-10-10'