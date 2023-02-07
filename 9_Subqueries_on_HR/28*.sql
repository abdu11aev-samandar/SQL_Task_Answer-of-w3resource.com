SELECT last_name
from employees
where DEPARTMENT_ID in (SELECT DEPARTMENT_ID
                        from departments
                        where DEPARTMENT_NAME like 'IT%')