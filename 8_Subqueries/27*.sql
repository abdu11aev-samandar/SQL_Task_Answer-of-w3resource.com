SELECT salesman.name, salesman.city, subquery1.total_amt
FROM salesman,
     (SELECT salesman_id, SUM(orders.purch_amt) AS total_amt
      FROM orders
      GROUP BY salesman_id) subquery1
WHERE subquery1.salesman_id = salesman.salesman_id
  AND salesman.city IN (SELECT DISTINCT city FROM customer);
