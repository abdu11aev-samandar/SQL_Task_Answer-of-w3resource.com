SELECT first_name, last_name, DEPARTMENT_ID
from employees
where DEPARTMENT_ID = (SELECT DEPARTMENT_ID
                       from departments
                       where DEPARTMENT_NAME = 'Marketing')