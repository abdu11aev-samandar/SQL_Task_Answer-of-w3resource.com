########################################

SELECT *
from salesman
where salesman_id in (SELECT distinct salesman_id
                      from customer a
                      where exists(
                                    SELECT *
                                    from customer b
                                    where b.salesman_id = a.salesman_id
                                      and b.cust_name <> a.cust_name
                                ));