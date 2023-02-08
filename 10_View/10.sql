create or replace view citynum as
SELECT city,count(salesman_id)
from salesman
group by city