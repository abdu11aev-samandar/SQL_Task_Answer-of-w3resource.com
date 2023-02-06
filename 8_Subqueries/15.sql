######################################

SELECT customer_id, cust_name, city
from customer
where exists(
              SELECT *
              from orders
              where city = 'London'
          )