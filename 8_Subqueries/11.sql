SELECT salesman_id, name
from salesman s
where 1 < (SELECT count(*)
           from customer
           where salesman_id = s.salesman_id)