SELECT year, subject, winner, country, category
from nobel_win
where subject
          not like 'P%'
order by year desc, winner asc;