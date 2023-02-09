SELECT *, 'High Rating'
from customer
where grade >= 300
union
SELECT *, 'Low Rating'
from customer
where grade < 300