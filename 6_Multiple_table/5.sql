SELECT c.cust_name, c.grade, o.ord_no
from salesman s,
     customer c,
     orders o
where s.city = c.city
  and c.salesman_id = s.salesman_id
  and s.salesman_id = o.salesman_id
order by c.grade desc having c.garde>0;