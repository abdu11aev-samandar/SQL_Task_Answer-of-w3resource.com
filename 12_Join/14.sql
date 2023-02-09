SELECT c.cust_name, c.city, c.grade, o.ord_no, o.ord_date, o.purch_amt
from ((salesman s
    left join customer c
       on c.salesman_id = s.salesman_id)
    left join orders o
      on o.customer_id = c.customer_id)
where purch_amt > 2000
  and grade is not null;