SELECT *
from salesman s
         cross join customer c
where c.city <> s.city
  and c.grade is not null