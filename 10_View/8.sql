create
or replace view incentive as
SELECT *
from salesman
where salesman_id = (SELECT salesman_id
                     from orders
                     where purch_amt in (SELECT max(purch_amt)
                                         from orders
                                         group by ord_date)
                     group by salesman_id
                     having count(salesman_id) >= 3)
