SELECT first_name || ' ' || last_name AS name_of_manager, d.DEPARTMENT_NAME
from employees e
         join departments d
              on e.DEPARTMENT_ID = d.DEPARTMENT_ID