SELECT concat_ws(' ', first_name, last_name) as full_name, salary
from employees
where commission_pct is null;