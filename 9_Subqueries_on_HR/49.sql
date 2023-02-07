SELECT *
from departments
where DEPARTMENT_ID in (SELECT DEPARTMENT_ID
                        from employees
                        group by DEPARTMENT_ID
                        having min(salary) >= 8000)