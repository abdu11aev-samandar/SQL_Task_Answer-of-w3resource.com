SELECT DEPARTMENT_NAME
from departments
where DEPARTMENT_ID in (SELECT DEPARTMENT_ID
                        from employees
                        group by DEPARTMENT_ID
                        having count(EMPLOYEE_ID) >= 1)