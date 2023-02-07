SELECT *
from employees
where salary = (SELECT salary
                from employees
                where DEPARTMENT_ID = 40)