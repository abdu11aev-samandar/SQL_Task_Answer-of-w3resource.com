SELECT *
FROM salesman a
WHERE EXISTS
          (SELECT *
           FROM customer b
           WHERE a.salesman_id = b.salesman_id
             AND 1 <
                 (SELECT COUNT(*)
                  FROM orders
                  WHERE orders.customer_id =
                        b.customer_id));