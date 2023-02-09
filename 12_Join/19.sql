SELECT *
from salesman s
         cross join customer c
where s.city is not null
  and c.grade is not null;