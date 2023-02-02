SELECT concat_ws(' ', first_name, last_name) as full_name, salary
from employees
where salary not between 7000 and 15000
order by salary;