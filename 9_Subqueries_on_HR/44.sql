SELECT concat_ws(' ', first_name, last_name) as full_name, hire_date
from employees
where HIRE_DATE > (SELECT HIRE_DATE
                   from employees
                   where EMPLOYEE_ID = 165)