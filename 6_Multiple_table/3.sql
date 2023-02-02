SELECT o.ord_no, c.cust_name, o.customer_id, o.salesman_id
FROM salesman s,
     customer c,
     orders o
WHERE c.city <> s.city
  AND o.customer_id = c.customer_id
  AND o.salesman_id = s.salesman_id;
