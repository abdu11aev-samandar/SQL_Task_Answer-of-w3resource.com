SELECT s.salesman_id, name, ord_no, 'highest on', ord_date
from salesman s,
     orders o
where s.salesman_id = o.salesman_id
  and o.purch_amt = (SELECT max(purch_amt)
                     from orders o1
                     where o.ord_date = o1.ord_date)

union

SELECT s.salesman_id, name, ord_no, 'lowest on', ord_date
from salesman s,
     orders o
where s.salesman_id = o.salesman_id
  and o.purch_amt = (SELECT min(purch_amt)
                     from orders o1
                     where o.ord_date = o1.ord_date)