SELECT c.cust_name, c.city, s.name, s.city
from customer c
         inner join salesman s
                    on c.salesman_id = s.salesman_id
where s.commission > 0.12
  and c.city <> s.city