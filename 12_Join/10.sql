SELECT *
from customer c
         inner join orders o
                    on c.customer_id = o.customer_id
order by ord_date