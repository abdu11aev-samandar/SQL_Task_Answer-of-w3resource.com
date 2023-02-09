SELECT customer_id, salesman_id
from orders
union
SELECT customer_id, salesman_id
from customer