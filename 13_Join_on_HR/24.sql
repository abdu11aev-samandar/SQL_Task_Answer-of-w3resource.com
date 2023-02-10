SELECT first_name, salary
from employees
         join departments using (DEPARTMENT_ID)
         join locations using (LOCATION_ID)
where city = 'London'