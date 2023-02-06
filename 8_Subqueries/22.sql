SELECT *
from customer
where grade > any (SELECT grade
                   from customer
                   where city < 'New York')