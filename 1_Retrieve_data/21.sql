SELECT year, subject, winner, country, category
from nobel_win
where (year <= 1972 and subject = 'Physiology')
   or (year >= 1974 and subject = 'Peace');