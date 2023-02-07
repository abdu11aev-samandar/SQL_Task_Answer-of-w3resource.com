SELECT *
from employees
where salary > (SELECT min(salary)
                from employees
                where DEPARTMENT_ID = 40)