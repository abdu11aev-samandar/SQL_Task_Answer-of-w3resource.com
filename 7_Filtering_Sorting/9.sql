SELECT concat_ws(' ', first_name, last_name) as full_name, salary, concat_ws(' ', email, phone_number)
from employees
where salary between 9000 and 17000;