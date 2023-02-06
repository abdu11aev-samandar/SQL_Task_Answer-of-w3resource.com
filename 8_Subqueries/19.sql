SELECT *
from salesman s
where city in (SELECT city
               from customer c
               where s.city = c.city)