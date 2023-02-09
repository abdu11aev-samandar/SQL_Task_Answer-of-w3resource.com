SELECT *
from salesman s
         left join customer c
                   on s.salesman_id = c.salesman_id