SELECT c.cust_name, s.name
from customer c,
     salesman s
where c.salesman_id = s.salesman_id;