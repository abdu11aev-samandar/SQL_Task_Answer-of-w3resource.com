SELECT customer_id as ID, cust_name as Name
from customer
where customer_id in (SELECT customer_id
                      from orders
                      group by customer_id
                      having count(ord_no) > 1)
union

SELECT salesman_id as ID, name as Name
from salesman
where salesman_id in (SELECT salesman_id
                      from orders
                      group by salesman_id
                      having count(ord_no) > 1)
