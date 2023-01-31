SELECT year, subject, winner, country, category
from nobel_win
where (year = 1970 and subject = 'Economics')
   or year = 1971
   or subject = 'Physics';