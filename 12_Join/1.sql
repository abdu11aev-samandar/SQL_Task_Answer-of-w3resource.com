SELECT s.name, c.cust_name, c.city
from salesman s,
     customer c
where s.city = c.city
