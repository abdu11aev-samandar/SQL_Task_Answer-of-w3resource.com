SELECT s.salesman_id, name, ord_no, 'highest on', ord_date
from salesman s,
     orders o1
where o1.purch_amt = (SELECT max(purch_amt)
                      from orders o2
                      where o2.ord_date = o1.ord_date)

union

SELECT s.salesman_id, name, ord_no, 'lowest on', ord_date
from salesman s,
     orders o1
where o1.purch_amt = (SELECT min(purch_amt)
                      from orders o2
                      where o2.ord_date = o1.ord_date)
order by 3