SELECT *
from employees
where first_name
          like '[DSN]%'
order by salary desc;