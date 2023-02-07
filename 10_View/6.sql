create view nameorders as
select o.ord_no,
       o.purch_amt,
       s.salesman_id,
       s.name,
       c.cust_name
from salesman s,
     customer c,
     orders o;