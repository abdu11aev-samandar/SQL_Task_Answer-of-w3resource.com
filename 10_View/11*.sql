create or replace view norders as
SELECT s.name, subquery.avg, subquery.sum
from salesman s,
     (select salesman_id,
             avg(purch_amt) as avg,
             sum(purch_amt) as sum
      from orders
      group by salesman_id) subquery
where subquery.salesman_id = s.salesman_id