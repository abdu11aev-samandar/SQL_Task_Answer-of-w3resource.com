SELECT e.first_name, last_name, d.DEPARTMENT_ID, DEPARTMENT_NAME
from employees e
         join departments d
              on e.DEPARTMENT_ID = d.DEPARTMENT_ID