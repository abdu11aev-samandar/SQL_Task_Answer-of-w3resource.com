SELECT *
from orders
where salesman_id = (SELECT salesman_id
                     from salesman
                     where commission = (SELECT max(commission)
                                         from salesman))
