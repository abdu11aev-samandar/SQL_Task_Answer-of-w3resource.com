SELECT e1.first_name as 'Employee', e2.first_name as 'Manager'
from employees e1
         join employees e2
              on e1.MANAGER_ID = e2.EMPLOYEE_ID
