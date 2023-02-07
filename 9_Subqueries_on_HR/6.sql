SELECT *
from employees
where DEPARTMENT_ID in (SELECT DEPARTMENT_ID
                        from departments
                        where DEPARTMENT_NAME = 'Finance')