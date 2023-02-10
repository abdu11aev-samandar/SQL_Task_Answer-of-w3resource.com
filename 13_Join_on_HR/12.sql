SELECT e1.first_name, e1.last_name, e2.DEPARTMENT_ID
from employees e1
         join employees e2
              on e2.last_name = 'Taylor' and e1.DEPARTMENT_ID = e2.DEPARTMENT_ID