SELECT country_id, count(city)
from locations
group by country_id
order by count asc;