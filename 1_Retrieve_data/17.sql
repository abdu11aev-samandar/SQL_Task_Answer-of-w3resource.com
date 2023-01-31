SELECT *
from nobel_win
where year >= 1972
  and (winner = 'Menachem Begin' or winner = 'Yitzhak Rabin');