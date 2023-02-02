SELECT *
from employees
where first_name
          not like 'M%'
order by employee_id asc;