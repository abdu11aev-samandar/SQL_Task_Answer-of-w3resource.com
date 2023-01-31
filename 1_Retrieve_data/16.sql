SELECT year, subject, winner, country
from nobel_win
where (year >= 1965 and year <= 1975)
  and subject = 'Chemistry'