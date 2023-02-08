CREATE or REPLACE VIEW citymatch(custcity, salescity)
AS
SELECT distinct c.city, s.city
from customer c,
     salesman s
where c.salesman_id = s.salesman_id