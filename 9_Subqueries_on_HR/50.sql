SELECT *
from employees
where manager_id in (SELECT manager_id
                     from employees
                     group by manager_id
                     having count(EMPLOYEE_ID) >= 4)