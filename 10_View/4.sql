create or replace view gradecount as
select grade, count(customer_id)
from customer
group by grade;