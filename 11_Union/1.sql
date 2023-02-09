SELECT salesman_id, name, 'Salesman' as Type
from salesman
where city = 'London'
union
SELECT customer_id, cust_name, 'Customer' as Type
from customer
where city = 'London'
