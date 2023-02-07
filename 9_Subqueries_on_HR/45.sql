SELECT *
from employees
where salary < (SELECT avg(salary)
                from employees)
  and DEPARTMENT_ID = (SELECT DEPARTMENT_ID
                       from employees
                       where FIRST_NAME = 'Laura')