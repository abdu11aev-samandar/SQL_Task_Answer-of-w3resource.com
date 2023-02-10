SELECT e.first_name, last_name, d.DEPARTMENT_ID, DEPARTMENT_NAME
from departments d
         left join employees e
                   on d.DEPARTMENT_ID <> e.DEPARTMENT_ID