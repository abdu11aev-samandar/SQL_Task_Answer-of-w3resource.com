SELECT customer_id, cust_name, city, grade, salesman_id
from customer
where city = 'New York'
   or grade > 100;