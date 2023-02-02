SELECT c.cust_name as Customer, c.city as City, s.name, s.commission
from salesman s,
     customer c
where s.commission between 0.12 and 0.14
  and s.salesman_id = c.salesman_id
order by commission desc;