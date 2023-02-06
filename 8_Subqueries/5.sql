SELECT *
from orders
where salesman_id = (SELECT distinct salesman_id
                     from salesman
                     where city = 'New York');