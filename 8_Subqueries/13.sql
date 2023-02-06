SELECT *
from orders o
where purch_amt >= (SELECT avg(purch_amt)
                    from orders o2
                    where o.customer_id = o2.customer_id)
order by ord_no;