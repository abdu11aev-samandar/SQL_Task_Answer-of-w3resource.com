SELECT commission
from salesman
where salesman_id = (SELECT distinct salesman_id
                     from customer
                     where city = 'Paris');