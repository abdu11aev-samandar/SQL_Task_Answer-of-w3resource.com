SELECT e1.first_name as 'Employees', e2.first_name as 'Manager'
from employees e1
         left join employees e2
                   on e1.manager_id=e2.employee_id