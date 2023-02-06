#######################################

SELECT ord_date, sum(purch_amt)
from orders a
group by ord_date
having sum(purch_amt) >
       (SELECT 1000 + max(purch_amt)
        from orders b
        where a.ord_date = b.ord_date)