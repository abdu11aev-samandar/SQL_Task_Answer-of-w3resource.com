SELECT *
from customer
where grade > all (SELECT grade
                   from customer
                   where city = 'New York')