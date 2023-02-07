SELECT first_name, last_name
from employees
where salary > (SELECT salary
                from employees
                where EMPLOYEE_ID = 163)