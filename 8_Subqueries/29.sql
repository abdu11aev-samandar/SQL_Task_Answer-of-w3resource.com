SELECT *
from customer
where grade not in (SELECT grade
                    from customer
                    where city = 'Paris')