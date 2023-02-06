SELECT *
from salesman s
where exists(
              SELECT cust_name
              from customer c
              where s.name < c.cust_name
          )