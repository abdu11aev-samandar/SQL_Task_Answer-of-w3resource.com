SELECT *
from salesman
where city = ANY (SELECT city
                  from customer)