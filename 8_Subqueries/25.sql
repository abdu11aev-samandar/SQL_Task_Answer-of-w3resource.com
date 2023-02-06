SELECT *
from orders
where purch_amt < any (SELECT max(purch_amt)
                       from orders o,
                            customer c
                       where o.customer_id = c.customer_id
                         and c.city = 'London')