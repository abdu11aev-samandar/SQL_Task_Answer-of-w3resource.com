SELECT *
from employees
where DEPARTMENT_ID = (SELECT DEPARTMENT_ID
                       from employees
                       where EMPLOYEE_ID = 201)