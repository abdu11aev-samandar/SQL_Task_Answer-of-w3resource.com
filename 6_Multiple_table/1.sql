SELECT c.cust_name, s.name, s.city
from customer c,
     salesman s
where c.city = s.city;