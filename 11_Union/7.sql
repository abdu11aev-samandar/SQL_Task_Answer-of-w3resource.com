SELECT *, 'Matched'
from salesman s
where salesman_id in (SELECT salesman_id
                      from customer
                      where s.city = city)
union
SELECT *, 'No Matched'
from salesman s
where salesman_id in (SELECT salesman_id
                      from customer
                      where s.city <> city)