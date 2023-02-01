SELECT *
from salesman
where name
    between 'A' and 'L'
  and not name in ('A', 'L');