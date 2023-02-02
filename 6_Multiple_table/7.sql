SELECT o.ord_no, c.cust_name, s.commission, o.purch_amt * s.commission as Comission
from salesman s,
     customer c,
     orders o
where c.grade >= 200
  and s.salesman_id = c.salesman_id
  and s.salesman_id = o.salesman_id
  and o.salesman_id = c.salesman_id
order by comission;
