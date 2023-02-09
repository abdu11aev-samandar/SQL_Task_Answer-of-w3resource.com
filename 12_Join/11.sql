SELECT c.cust_name,
       c.city,
       o.ord_no,
       o.ord_date,
       o.purch_amt,
       s.name,
       s.commission
from ((customer c
    left join orders o
       on c.customer_id = o.customer_id)
    left join salesman s
      on s.salesman_id = o.salesman_id)