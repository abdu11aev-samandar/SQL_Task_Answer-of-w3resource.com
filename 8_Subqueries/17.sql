SELECT *
from salesman
where salesman_id in (SELECT distinct salesman_id
                      from customer a
                      where not exists(
                              SELECT *
                              from customer b
                              where a.salesman_id = b.salesman_id
                                and a.cust_name <> b.cust_name
                          ));