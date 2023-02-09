SELECT c.cust_name, c.city, s.name, s.commission
from customer c
         inner join salesman s
                    on c.salesman_id = s.salesman_id