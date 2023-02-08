create or replace view elitsalesman as
select o.ord_date, s.salesman_id, s.name
from salesman s,
     orders o
where o.purch_amt = (SELECT max(purch_amt)
                     from orders o1
                     group by ord_date)
  and o.salesman_id = o.salesman_id;
