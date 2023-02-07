#################################

CREATE VIEW elitsalesman
AS
SELECT o.ord_date, s.salesman_id, s.name
FROM salesman s,
     orders o
WHERE s.salesman_id = o.salesman_id
  AND o.purch_amt =
      (SELECT MAX(purch_amt)
       FROM orders o1
       WHERE o1.ord_date = o.ord_date);