SELECT *
from customer
where customer_id = 2001
  and salesman_id = (SELECT salesman_id
                     from salesman
                     where name = 'Mc Lyon');