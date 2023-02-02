SELECT first_name, last_name, DEPARTMENT_ID
from employees
where salary > 8000
order by DEPARTMENT_ID desc;