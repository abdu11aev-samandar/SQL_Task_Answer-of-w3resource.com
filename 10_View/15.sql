create or replace view salesmanonoct as
SELECT *
from salesman
where salesman_id in (SELECT salesman_id
                      from orders
                      where ord_date = '2012-10-10')