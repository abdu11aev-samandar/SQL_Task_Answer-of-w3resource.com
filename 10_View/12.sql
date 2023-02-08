create or replace view mcustomer as
SELECT *
from salesman
where salesman_id in (SELECT salesman_id
                      from customer
                      group by salesman_id
                      having count(salesman_id) > 1)