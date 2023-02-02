SELECT first_name, last_name, salary
from employees
where first_name
          like '%m'
order by salary asc;