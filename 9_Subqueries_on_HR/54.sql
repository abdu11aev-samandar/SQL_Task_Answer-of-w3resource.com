SELECT *
from employees
where salary in (SELECT max(salary)
                 from employees
                 group by DEPARTMENT_ID)