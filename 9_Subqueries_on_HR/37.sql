SELECT *
from employees
where salary > (SELECT max(salary)
                from employees
                where DEPARTMENT_ID = 40)