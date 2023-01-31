SELECT year, subject, winner, country, category
from nobel_win
where year = 1970
order by subject asc;