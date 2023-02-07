SELECT *
from employees
where salary = 3000
  and (EMPLOYEE_ID = 121 or MANAGER_ID = 121)