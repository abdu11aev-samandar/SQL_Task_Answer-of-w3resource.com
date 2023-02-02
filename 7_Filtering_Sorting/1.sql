SELECT concat_ws(' ', first_name, last_name) as Full_name, salary
from employees
where salary < 6000
order by salary desc;