SELECT *
from employees
where HIRE_DATE > (SELECT HIRE_DATE
                   from employees
                   where EMPLOYEE_ID = 165)