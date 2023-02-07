SELECT *
from departments
where DEPARTMENT_ID = (SELECT DEPARTMENT_ID
                       from employees
                       where first_name = 'Susan')