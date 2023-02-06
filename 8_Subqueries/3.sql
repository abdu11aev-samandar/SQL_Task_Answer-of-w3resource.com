SELECT *
from orders
where salesman_id = (select distinct salesman_id
                     from orders
                     where customer_id = 3007);