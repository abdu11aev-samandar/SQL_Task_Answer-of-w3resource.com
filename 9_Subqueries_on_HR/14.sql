SELECT *
from employees
where DEPARTMENT_ID in (SELECT DEPARTMENT_ID
                        from employees
                        where first_name like 'T%'
                        group by DEPARTMENT_ID)