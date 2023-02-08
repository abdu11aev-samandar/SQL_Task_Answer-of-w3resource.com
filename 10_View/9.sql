create or replace view highgrade as
SELECT *
from customer
where grade = (SELECT max(grade)
               from customer)