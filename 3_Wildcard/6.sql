SELECT *
from orders
where (purch_amt >= 500 and purch_amt < 948.50)
   or (purch_amt > 1983.43 and purch_amt <= 4000);

SELECT *
from orders
where (purch_amt between 500 and 4000)
  and not purch_amt in (948.50, 1983.43);