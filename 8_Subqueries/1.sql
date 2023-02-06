SELECT *
from orders
where salesman_id = (SELECT salesman_id
                     from salesman
                     where name = 'Paul Adam');