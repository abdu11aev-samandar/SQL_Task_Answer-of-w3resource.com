SELECT city, max(grade) as Max
from customer
group by city;