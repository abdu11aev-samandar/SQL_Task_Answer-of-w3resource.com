SELECT concat_ws(' ', first_name, last_name) as full_name, salary, MANAGER_ID
from employees
where manager_id < employee_id
order by manager_id asc;